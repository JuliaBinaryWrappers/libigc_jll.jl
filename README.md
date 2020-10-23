# `libigc_jll.jl` (v1.0.5186+0)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl). The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/5a21f83a0034c2a205af7f2232784e7f54195a42/L/libigc/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.  If you have any issue, please report it to the Yggdrasil [bug tracker](https://github.com/JuliaPackaging/Yggdrasil/issues).

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://juliapackaging.github.io/BinaryBuilder.jl/dev/jll/).

## Sources

The tarballs for `libigc_jll.jl` have been built from these sources:

* git repository: https://github.com/intel/intel-graphics-compiler.git (revision: `aaed3363afb9f7298f0e6d02cdc5885b50bc5d3a`)
* git repository: https://github.com/llvm/llvm-project.git (revision: `d32170dbd5b0d54436537b6b75beaf44324e0c28`)
* git repository: https://github.com/intel/opencl-clang.git (revision: `fdcfda343f493efdd262f0b6f2fae99809030c2f`)
* git repository: https://github.com/KhronosGroup/SPIRV-LLVM-Translator.git (revision: `0db501ebb43a5eec03469a226dc1822940e640b1`)
* git repository: https://github.com/intel/vc-intrinsics.git (revision: `c8c52b5fb14b33e32de9df573b7de186a0c97c94`)
* git repository: https://github.com/intel/llvm-patches.git (revision: `cfc800519a71522194efcaa9a5dd67ecbff43ffa`)
* files in directory, relative to originating `build_tarballs.jl`: [`./bundled`](https://github.com/JuliaPackaging/Yggdrasil/tree/5a21f83a0034c2a205af7f2232784e7f54195a42/L/libigc/bundled)

## Platforms

`libigc_jll.jl` is available for the following platforms:

* `Linux i686 {cxxstring_abi=cxx03, libc=glibc}` (`i686-linux-gnu-cxx03`)
* `Linux i686 {cxxstring_abi=cxx11, libc=glibc}` (`i686-linux-gnu-cxx11`)
* `Linux x86_64 {cxxstring_abi=cxx03, libc=glibc}` (`x86_64-linux-gnu-cxx03`)
* `Linux x86_64 {cxxstring_abi=cxx11, libc=glibc}` (`x86_64-linux-gnu-cxx11`)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `ExecutableProduct`: `GenX_IR`
* `ExecutableProduct`: `iga`
* `LibraryProduct`: `libiga`
* `LibraryProduct`: `libigc`
* `LibraryProduct`: `libigdfcl`
* `LibraryProduct`: `libopencl_clang`
