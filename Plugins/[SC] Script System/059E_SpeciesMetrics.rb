#===============================================================================
# Shattered Crowns - Species Metrics DSL
#===============================================================================
# Extends GameData::SpeciesMetrics with Ruby DSL support
# Format: GameData::SpeciesMetrics.define :POKEMON do |m| ... end
#===============================================================================

module GameData
  class SpeciesMetrics
    class << self
      def define(species_id, form = nil, gender = nil, &block)
        species_sym = species_id.is_a?(Symbol) ? species_id : species_id.to_s.upcase.to_sym
        # Build composite key when form or gender is specified
        key = species_sym
        if form || gender
          parts = [species_sym.to_s]
          parts << (form.nil? ? "0" : form.to_s)
          parts << gender.to_s if gender
          key = parts.join("_").to_sym
        end
        
        builder = SpeciesMetricsBuilder.new(key)
        yield(builder) if block_given?
        data = builder.build
        
        ScriptRegistry.register_species_metrics(key, data)
        
        data
      end
    end
  end
  
  class SpeciesMetricsBuilder
    def initialize(species_id)
      @data = {
        id: species_id,
        back_sprite: [0, 0],
        front_sprite: [0, 0],
        shadow_sprite: [0, 0, 0],
        dmax_back_sprite: [0, 0],
        dmax_front_sprite: [0, 0],
        dmax_shadow_x: 0
      }
    end
    
    def back_sprite(x, y)
      @data[:back_sprite] = [x.to_i, y.to_i]
    end
    
    def front_sprite(x, y)
      @data[:front_sprite] = [x.to_i, y.to_i]
    end
    
    def shadow_sprite(*args)
      @data[:shadow_sprite] = args.map(&:to_i)
    end
    
    def dmax_back_sprite(x, y)
      @data[:dmax_back_sprite] = [x.to_i, y.to_i]
    end
    
    def dmax_front_sprite(x, y)
      @data[:dmax_front_sprite] = [x.to_i, y.to_i]
    end
    
    def dmax_shadow_x(value)
      @data[:dmax_shadow_x] = value.to_i
    end
    
    def build
      @data
    end
  end
end

#===============================================================================
# ScriptRegistry Extensions
#===============================================================================

module GameData
  module ScriptRegistry
    class << self
      def register_species_metrics(key, data)
        @data ||= {}
        @data[:species_metrics] ||= {}
        @data[:species_metrics][key] = data
      end

      def get_species_metrics(species_id)
        species_sym = species_id.is_a?(Symbol) ? species_id : species_id.to_s.upcase.to_sym
        @data ||= {}
        @data[:species_metrics] ||= {}
        @data[:species_metrics][species_sym]
      end
      
      def all_species_metrics
        @data ||= {}
        @data[:species_metrics] ||= {}
        @data[:species_metrics]
      end
    end
  end
end

#===============================================================================
# PBSOverride Hook for SpeciesMetrics
#===============================================================================

module PBSOverride
  class << self
    def hook_species_metrics
      return unless SCScripts::PBS_REPLACEMENT_MODE rescue false
      
      if defined?(GameData::SpeciesMetrics) && !@species_metrics_hooked
        GameData::SpeciesMetrics.singleton_class.class_eval do
          alias_method :original_get_metrics, :get if method_defined?(:get) && !method_defined?(:original_get_metrics)
          
          def get(species_id)
            data = ScriptRegistry.get_species_metrics(species_id)
            return OpenStruct.new(data) if data
            original_get_metrics(species_id) if respond_to?(:original_get_metrics)
          end
          
          def get_species_form(species, form = 0)
            # Try form-specific first
            form_id = "#{species}_#{form}".to_sym
            data = ScriptRegistry.get_species_metrics(form_id)
            return OpenStruct.new(data) if data
            
            # Fall back to base species
            data = ScriptRegistry.get_species_metrics(species)
            return OpenStruct.new(data) if data
            
            nil
          end
        end
        @species_metrics_hooked = true
      end
    end
  end
end
