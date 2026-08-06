#===============================================================================
# [SC] Companion Pokemon - Affection Shim
# Makes [SC] Pokemon Affection an OPTIONAL dependency.
#
# When the Affection plugin is installed, it provides real affection_level
# and add_affection methods on Pokemon, and this shim does nothing.
#
# When it isn't installed, we fall back to deriving an affection tier from
# the Pokemon's vanilla `happiness` value, and turn add_affection into a
# no-op. The tiers mirror the Affection plugin's own thresholds so the
# Companion reaction system behaves the same on both happiness and the
# real affection scale.
#
# Ruby method redefinition is order-safe here:
#   * Companion plugin (alphabetically C) loads first -> we install shims
#     for Pokemon if the methods are missing.
#   * Pokemon Affection plugin (P) loads after -> defines the real methods
#     unconditionally, replacing the shim with the real implementation.
# So both load orders end up with the right behaviour.
#===============================================================================

class Pokemon
  unless method_defined?(:affection_level)
    # Map vanilla happiness (0..255) onto the same five-tier ladder the
    # Affection plugin uses internally. Roughly equivalent ranges so the
    # reaction tiers feel consistent whether or not Affection is installed.
    def affection_level
      h = (happiness rescue 0) || 0
      return :MAX    if h >= 220
      return :HIGH   if h >= 150
      return :MEDIUM if h >= 100
      return :LOW    if h >= 50
      return :NONE
    end
  end

  unless method_defined?(:add_affection)
    # No-op fallback. When the real plugin loads it overrides this with
    # actual storage, so callers don't need respond_to? guards.
    def add_affection(_amount)
      # intentionally empty
    end
  end
end
