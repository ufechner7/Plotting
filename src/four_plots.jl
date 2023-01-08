# example for using plotting in Julia using subplots
using Plots, Plots.PlotMeasures, Gtk.ShortNames, InspectDR

function init()
    # inspectdr()
    InspectDR.defaults.xaxiscontrol_visible = false
    default(width=1, xtickfontsize=12, ytickfontsize=12, legendfontsize=12)
end

init()

x  = 0:0.01:100
y1 = sin.(x)
y2 = cos.(x)

p1 = plot(x, y1, link=:x, legend=false)
p2 = plot(x, y2, legend=false, color=:red)

ma = -2mm
pl = plot(p1, p2, layout=(2,1), top_margin=ma, legend = false)

pIDR = display(pl)               # Display with InspectDR and keep plot object
resize!(pIDR.wnd, 1200, 700)     # Resize GTK window directly
G_.keep_above(pIDR.wnd, true)    # Keep window above all others
p = gui()
p.src.layout.values.ncolumns = 1 # Use 1 column only
InspectDR.refresh(p)
nothing