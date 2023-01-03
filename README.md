# Plotting

## Installation
1. install Julia 1.9  
   jill install 1.9 --unstable  
   jill switch 1.9
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
```
## Executing the examples
```julia
@time @eval include("src/plot.jl")
```

## Additional examples:
The script **plot2.jl** provides an example to plot two signals in one windows, the example **two_plots.jl** shows how to plot two signals in two windows.

## Performance
```
Julia 1.8.4:     15.3s 15.5s  
Julia 1.9-beta2:  9.6s 9.63s
```

---



Tested on Ubuntu.
