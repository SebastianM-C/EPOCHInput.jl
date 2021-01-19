using EPOCHInput
using Documenter

makedocs(;
    modules=[EPOCHInput],
    authors="Sebastian Micluța-Câmpeanu <m.c.sebastian95@gmail.com> and contributors",
    repo="https://github.com/SebastianM-C/EPOCHInput.jl/blob/{commit}{path}#L{line}",
    sitename="EPOCHInput.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://SebastianM-C.github.io/EPOCHInput.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/SebastianM-C/EPOCHInput.jl",
)
