using Base.BinaryPlatforms

# Can't use Preferences since we might be running this very early with a non-existing Manifest
libigc_jll_uuid = Base.UUID("94295238-5935-5bd7-bb0f-b00942e9bdd5")
const preferences = Base.get_preferences(libigc_jll_uuid)
Base.record_compiletime_preference(libigc_jll_uuid, "debug")
const debug_preference = if haskey(preferences, "debug")
    if isa(preferences["debug"], Bool)
        preferences["debug"]
    elseif isa(preferences["debug"], String)
        parsed = tryparse(Bool, preferences["debug"])
        if parsed === nothing
            @error "Debug preference is not valid; expected a boolean, but got '$(preferences["debug"])'"
            nothing
        else
            parsed
        end
    else
        @error "Debug preference is not valid; expected a boolean, but got '$(preferences["debug"])'"
        nothing
    end
else
    nothing
end

function augment_platform!(platform::Platform)
    platform["debug"] = string(something(debug_preference, false))
    return platform
end