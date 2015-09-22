module PhyloNetworks

using Base.Collections # for updateInCycle with priority queue
using DataFrames # for rep function and read/write csv tables
using NLopt # for branch lengths optimization
using GraphViz #for visualization

const DEBUG = false #for debugging only
const DEBUGC = false #more detailed prints
const CHECKNET = false #for debugging only
const REDIRECT = false # changed for debugging to a file

export
HybridNetwork,
readTopology,
readTopologyLevel1,
tipLabels,
writeTopology,
deleteLeaf,
printEdges,
printNodes,
readTrees2CF,
readTableCF,
readInputTrees,
descData,
readStartTop,
snaq,
readSnaqNetwork,
snaqDebug

# export part

include("types.jl")
include("auxiliary.jl")
include("update.jl")
include("undo.jl")
include("addHybrid.jl")
include("deleteHybrid.jl")
include("moves.jl")
include("readwrite.jl")
include("readData.jl")
include("optimization.jl")
include("pseudolik.jl")
include("visualization.jl")
include("descriptive.jl")


end #module