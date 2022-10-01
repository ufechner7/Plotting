# example for using plotting in Julia with two windows
using Plots

include("plot_helpers.jl")

# main
help()

x  = 0:0.01:100
y1 = sin.(x)
y2 = cos.(x)

plot(x, y1, legend=false)
plot(x, y2, legend=false, color=:red)
nothing