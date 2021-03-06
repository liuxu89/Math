using Math
using Documenter

DocMeta.setdocmeta!(Math, :DocTestSetup, :(using Math); recursive=true)

makedocs(;
    modules=[Math],
    authors="liuxu <liuxu89@mail.ustc.edu.cn> and contributors",
    repo="https://github.com/liuxu89/Math/blob/{commit}{path}#{line}",
    sitename="Math",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://liuxu89.github.io/Math",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "积分" => "integral.md",
        "未分类" => "tmp.md",
    ],
)

deploydocs(;
    repo="github.com/liuxu89/Math",
    devbranch="main",
)
