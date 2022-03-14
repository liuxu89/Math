using Math
using Documenter

DocMeta.setdocmeta!(Math, :DocTestSetup, :(using Math); recursive=true)

makedocs(;
    modules=[Math],
    authors="liuxu <liuxu89@mail.ustc.edu.cn> and contributors",
    repo="https://github.com/liuxu89/Math.jl/blob/{commit}{path}#{line}",
    sitename="Math.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://liuxu89.github.io/Math.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/liuxu89/Math.jl",
    devbranch="main",
)
