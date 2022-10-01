# example for using plotting in Julia with two lines in one window
# in addition it shows the trace dialog, which allows to toggle the visibility of the lines
using Plots

include("plot_helpers.jl")

# main
help()

x  = 0:0.01:100
y1 = sin.(x)
y2 = cos.(x)

p = plot(x, y1, label="sin", legend=true)
plot!(x, y2, label="cos", legend=true, color=:red)
sleep(0.1)
InspectDR.tracedialog_show(p)
println("You must close the trace dialog before you can zoom!")
nothing