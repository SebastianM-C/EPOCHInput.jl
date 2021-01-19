module EPOCHInput

export parse_input

using Unitful
using PhysicalConstants.CODATA2018: c_0, ε_0, μ_0, m_e, e
using BangBang

include("parse.jl")
include("constant.jl")
include("control.jl")
include("no_globals.jl")
include("no_parsing.jl")
include("output.jl")

end
