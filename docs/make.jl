using IntegratedHU
using Documenter

DocMeta.setdocmeta!(IntegratedHU, :DocTestSetup, :(using IntegratedHU); recursive=true)

makedocs(;
    modules=[IntegratedHU],
    authors="Dale <djblack@uci.edu> and contributors",
    repo="https://github.com/Dale-Black/IntegratedHU.jl/blob/{commit}{path}#{line}",
    sitename="IntegratedHU.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Dale-Black.github.io/IntegratedHU.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Dale-Black/IntegratedHU.jl",
)
