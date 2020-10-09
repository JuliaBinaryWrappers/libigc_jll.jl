# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libigc_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libigc")
JLLWrappers.@generate_main_file("libigc", UUID("94295238-5935-5bd7-bb0f-b00942e9bdd5"))
end  # module libigc_jll
