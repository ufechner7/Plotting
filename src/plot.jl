# example for using plotting in Julia
using Plots

include("plot_helpers.jl")

# main
help()

x  = 0:0.01:100
y1 = sin.(x)

p1 = plot(x, y1, legend=false)
nothing