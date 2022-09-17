using Gtk.ShortNames

function init()
    inspectdr()
    InspectDR.defaults.xaxiscontrol_visible = false
    default(width=2, xtickfontsize=12, ytickfontsize=12, legendfontsize=12)
end

function help()
    println("To zoom, draw a rectangle while keeping the right mouse key pressed!")
    println("To go back to see the full graph, press <CRTRL><f>")
end

function plot(params...; keywords...)
    p = Plots.plot(params...; keywords...)
    pIDR = display(p)            # Display with InspectDR and keep plot object
    resize!(pIDR.wnd, 1200, 700) # Resize GTK window directly
    G_.keep_above(pIDR.wnd, true)
end

init()