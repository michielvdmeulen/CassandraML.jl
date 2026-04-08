using Pkg
if Pkg.project().name != "docs"
    Pkg.activate(@__DIR__)
    Pkg.resolve()  # Automatically update deps
end

using CassandraML
using Documenter

DocMeta.setdocmeta!(CassandraML, :DocTestSetup, :(using CassandraML); recursive=true)

makedocs(;
    modules=[CassandraML],
    authors="Michiel van der Meulen <michielvdmeulen@gmail.com> and contributors",
    sitename="CassandraML.jl",
    format=Documenter.HTML(;
        ansicolor=true,
        prettyurls=false, # Set true when building local docs without live serving (working links)
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "API" => "api.md",  # The docs/src/api.md file is created by MvdmPkgTemplate by default
    ],
    repo="https://github.com/michielvdmeulen/CassandraML.jl",
)
