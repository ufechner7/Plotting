using PyCall
pygui(:qt5)

using PyPlot
pygui(true)

plot(rand(3))
