using EPOCHInput
using Test
using Unitful

@testset "EPOCHInput.jl" begin
    folders = [
        "gauss",
        "Nuter2018",
        "Wang-Arefiev2020"
    ]
    results = Dict(
        "gauss" => Dict(
            :nx => 10,
            :a0 => 70,
            :laser => (
                lambda = 800u"nm",
            )
        ),
        "Nuter2018" => Dict(
            :nx => 640,
            :a0 => 1,
            :laser => (
                lambda = 800u"nm",
            )
        ),
        "Wang-Arefiev2020" => Dict(
            :a0 => 85,
            :laser => (
                lambda = 1u"μm",
            )
        )
    )
    @testset "$folder" for folder in folders
        p = parse_input("$folder/input.deck")
        @testset "$k" for (k,v) in results[folder]
            if v isa NamedTuple
                for (_k, _v) in pairs(v)
                    if unit(_v) == NoUnits
                        @test getproperty(p[k], _k) == _v
                    else
                        @test getproperty(p[k], _k) ≈ _v
                    end
                end
            else
                @test p[k] == v
            end
        end
    end
end
