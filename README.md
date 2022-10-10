# Plotting

## Installation
1. install Julia as explained for example [here](https://ufechner7.github.io/2022/08/18/installing-julia.html)
2. clone this repository
3. change into the folder Plotting
```
cd Plotting
```
4. run from bash
```bash
julia --project
```
Run from the julia prompt:
```julia
using Pkg
Pkg.instantiate()
using AutoSysimages
install()
```
## Executing the example
```julia
@time include("src/plot.jl")
```

## Additional examples:
The script **plot2.jl** provides an example to plot two signals in one windows, the example **two_plots.jl** shows how to plot two signals in two windows.

---

## Creating a system image
To reduce the startup time it is possible to create a system image. This can be done using the following steps
```bash
cd Plotting
asysimg --project
```
On the julia prompt now execute:
```julia
@time include("src/plot.jl")
```
and close the plotting window.

Now quit Julia with:
```julia
exit()
```
You get the question: "... Do you want to build one?"  
Answer with "Yes" by just pressing \<ENTER\>.

This will take a few minutes.

If you now start Julia again with the command:
```bash
asysimg --project
```
and execute on the Julia prompt:
```julia
@time include("src/plot.jl")
```
you will see that it goes much faster.

On my computer it needed 14.6s without system image and 5.7s with system image.

Tested on Ubuntu.
