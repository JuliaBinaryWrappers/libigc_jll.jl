using Base.BinaryPlatforms

# Can't use Preferences since we might be running this very early with a non-existing Manifest
libigc_jll_uuid = Base.UUID("94295238-5935-5bd7-bb0f-b00942e9bdd5")
const preferences = Base.get_preferences(libigc_jll_uuid)
Base.record_compiletime_preference(libigc_jll_uuid, "debug")

function augment_platform!(platform::Platform)
    debug = tryparse(Bool, get(preferences, "debug", "false"))
    if debug === nothing
        @error "Invalid preference debug=$(get(preferences, "debug", "false"))"
    elseif !haskey(platform, "debug")
        platform["debug"] = string(debug)
    end
    return platform
end