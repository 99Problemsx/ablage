#===============================================================================
# Shattered Crowns Script System - Berry Plant Definitions
#===============================================================================
# Adds GameData::BerryPlant.define DSL for defining berry plant data.
#===============================================================================

module GameData
  class BerryPlant
    class << self
      def define(id, &block)
        id = id.is_a?(Symbol) ? id : id.to_s.upcase.to_sym
        builder = BerryPlantBuilder.new(id)
        yield(builder) if block_given?
        data = builder.to_data
        ScriptRegistry.register(:berry_plants, id, data)
        data
      end
    end
  end

  #=============================================================================
  # BerryPlantBuilder
  #=============================================================================
  class BerryPlantBuilder
    def initialize(id)
      @data = {
        id: id,
        hours_per_stage: 3,
        drying_per_hour: 15,
        min_yield: 2,
        max_yield: 5
      }
    end

    def hours_per_stage(val)
      @data[:hours_per_stage] = val
    end

    def drying_per_hour(val)
      @data[:drying_per_hour] = val
    end

    def yield(min, max = nil)
      @data[:min_yield] = min
      @data[:max_yield] = max || min
    end

    def to_data
      @data.dup
    end
  end
end
