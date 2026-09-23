# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule YAC_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("YAC")
JLLWrappers.@generate_main_file("YAC", Base.UUID("aa1ccfa5-6185-5fd1-9463-1a36d2aeca03"))
end  # module YAC_jll
