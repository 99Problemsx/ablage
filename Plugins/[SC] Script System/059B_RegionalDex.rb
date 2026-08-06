#===============================================================================
# Shattered Crowns - Regional Dex DSL
#===============================================================================
# Extends GameData::RegionalDex with Ruby DSL support
# Format: GameData::RegionalDex.define DEX_ID do |d| d.species :A, :B, :C end
#===============================================================================

module GameData
  class RegionalDex
    class << self
      alias_method :original_register_dex, :register if method_defined?(:register)
      
      def define(dex_id, &block)
        builder = RegionalDexBuilder.new(dex_id)
        yield(builder) if block_given?
        data = builder.build
        
        # Store in ScriptRegistry
        ScriptRegistry.register(:regional_dexes, dex_id, data)
        
        # Also register with GameData if method exists
        if respond_to?(:original_register_dex)
          original_register_dex(data)
        elsif respond_to?(:register)
          register(data)
        end
        
        data
      end
    end
  end
  
  #=============================================================================
  # RegionalDex Builder
  #=============================================================================
  
  class RegionalDexBuilder
    def initialize(dex_id)
      @dex_id = dex_id
      @species_list = []
    end
    
    # Add species to the dex
    # Can be called multiple times or with multiple arguments
    def species(*args)
      args.each do |arg|
        if arg.is_a?(Array)
          @species_list.concat(arg.map { |s| normalize_species(s) })
        else
          @species_list << normalize_species(arg)
        end
      end
    end
    
    # Alias for species
    def pokemon(*args)
      species(*args)
    end
    
    # Add a single species at a specific dex number
    def add(dex_number, species_id)
      # Ensure list is large enough
      while @species_list.length < dex_number
        @species_list << nil
      end
      @species_list[dex_number - 1] = normalize_species(species_id)
    end
    
    def build
      {
        id: @dex_id,
        species: @species_list.compact
      }
    end
    
    private
    
    def normalize_species(s)
      s.is_a?(Symbol) ? s : s.to_s.upcase.to_sym
    end
  end
end

#===============================================================================
# ScriptRegistry Extension for RegionalDex
#===============================================================================

module ScriptRegistry
  class << self
    def get_regional_dex(id)
      @data ||= {}
      @data[:regional_dexes] ||= {}
      @data[:regional_dexes][id]
    end
    
    def all_regional_dexes
      @data ||= {}
      @data[:regional_dexes] ||= {}
      @data[:regional_dexes]
    end
    
    # Get dex number for a species in a specific regional dex
    def regional_dex_number(dex_id, species)
      dex = get_regional_dex(dex_id)
      return nil unless dex
      
      species_sym = species.is_a?(Symbol) ? species : species.to_s.upcase.to_sym
      idx = dex[:species].index(species_sym)
      idx ? idx + 1 : nil
    end
    
    # Check if species is in a regional dex
    def in_regional_dex?(dex_id, species)
      !regional_dex_number(dex_id, species).nil?
    end
  end
end

#===============================================================================
# PBSOverride Hook for RegionalDex
#===============================================================================

module PBSOverride
  class << self
    def hook_regional_dexes
      return unless SCScripts::PBS_REPLACEMENT_MODE rescue false
      
      if defined?(GameData::RegionalDex) && !@regional_dex_hooked
        GameData::RegionalDex.singleton_class.class_eval do
          alias_method :original_get_rdex, :get if method_defined?(:get) && !method_defined?(:original_get_rdex)
          
          def get(id)
            data = ScriptRegistry.get_regional_dex(id)
            return data if data
            original_get_rdex(id) if respond_to?(:original_get_rdex)
          end
          
          # Get all species in a dex
          def species_list(dex_id)
            dex = ScriptRegistry.get_regional_dex(dex_id)
            dex ? dex[:species] : []
          end
          
          # Get dex number for species
          def dex_number(dex_id, species)
            ScriptRegistry.regional_dex_number(dex_id, species)
          end
        end
        @regional_dex_hooked = true
      end
    end
  end
end
