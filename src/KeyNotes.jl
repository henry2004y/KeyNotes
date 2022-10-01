module KeyNotes

using Reexport: @reexport
@reexport using Books
@reexport using DataFrames:
    DataFrame
@reexport using FileIO: FileIO

using CairoMakie
using CairoMakie.Makie: Figure, FigureAxisPlot
using LazyGrids: ndgrid
using SpecialFunctions
using OrdinaryDiffEq

export M, example_dataframe

include("data.jl")
include("makie.jl")

"""
    build()

This function is called during CI.
"""
function build()
   println("Building my notes")
   # To avoid publishing broken websites.
   fail_on_error = true
   gen(; fail_on_error)
   build_all(; fail_on_error)
end

end # module
