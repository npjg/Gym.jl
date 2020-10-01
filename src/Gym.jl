module Gym

using Flux

#Spaces
include("Spaces/Space.jl")
using .Space
export sample

include("Envs/registry.jl")
export make, register,        	     		# Registry functions
       EnvWrapper, reset!, step!, state,
       trainable, game_over, testmode!  # Environment interaction functions

end #module
