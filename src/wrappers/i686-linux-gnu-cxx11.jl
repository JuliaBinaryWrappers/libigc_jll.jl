# Autogenerated wrapper script for libigc_jll for i686-linux-gnu-cxx11
export libiga, iga, libigc, libigdfcl, GenX_IR, libopencl_clang

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libiga`
const libiga_splitpath = ["lib", "libiga32.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libiga_path = ""

# libiga-specific global declaration
# This will be filled out by __init__()
libiga_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libiga = "libiga32.so.1"


# Relative path to `iga`
const iga_splitpath = ["bin", "iga32"]

# This will be filled out by __init__() for all products, as it must be done at runtime
iga_path = ""

# iga-specific global declaration
function iga(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(iga_path)
    end
end


# Relative path to `libigc`
const libigc_splitpath = ["lib", "libigc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libigc_path = ""

# libigc-specific global declaration
# This will be filled out by __init__()
libigc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libigc = "libigc.so.1"


# Relative path to `libigdfcl`
const libigdfcl_splitpath = ["lib", "libigdfcl.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libigdfcl_path = ""

# libigdfcl-specific global declaration
# This will be filled out by __init__()
libigdfcl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libigdfcl = "libigdfcl.so.1"


# Relative path to `GenX_IR`
const GenX_IR_splitpath = ["bin", "GenX_IR"]

# This will be filled out by __init__() for all products, as it must be done at runtime
GenX_IR_path = ""

# GenX_IR-specific global declaration
function GenX_IR(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(GenX_IR_path)
    end
end


# Relative path to `libopencl_clang`
const libopencl_clang_splitpath = ["lib", "libopencl-clang.so.9"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libopencl_clang_path = ""

# libopencl_clang-specific global declaration
# This will be filled out by __init__()
libopencl_clang_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libopencl_clang = "libopencl-clang.so.9"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libigc")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libiga_path = normpath(joinpath(artifact_dir, libiga_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libiga_handle = dlopen(libiga_path)
    push!(LIBPATH_list, dirname(libiga_path))

    global iga_path = normpath(joinpath(artifact_dir, iga_splitpath...))

    push!(PATH_list, dirname(iga_path))
    global libigc_path = normpath(joinpath(artifact_dir, libigc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libigc_handle = dlopen(libigc_path)
    push!(LIBPATH_list, dirname(libigc_path))

    global libigdfcl_path = normpath(joinpath(artifact_dir, libigdfcl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libigdfcl_handle = dlopen(libigdfcl_path)
    push!(LIBPATH_list, dirname(libigdfcl_path))

    global GenX_IR_path = normpath(joinpath(artifact_dir, GenX_IR_splitpath...))

    push!(PATH_list, dirname(GenX_IR_path))
    global libopencl_clang_path = normpath(joinpath(artifact_dir, libopencl_clang_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libopencl_clang_handle = dlopen(libopencl_clang_path)
    push!(LIBPATH_list, dirname(libopencl_clang_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

