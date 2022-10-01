# example for using plotting in Julia with two lines in one window
using Plots

include("plot_helpers.jl")

# main
help()

x  = 0:0.01:100
y1 = sin.(x)
y2 = cos.(x)

plot(x, y1, label="sin", legend=true)
plot!(x, y2, label="cos", legend=true, color=:red)
nothing