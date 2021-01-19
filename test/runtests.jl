using EPOCHInput
using Test
using Unitful

@testset "EPOCHInput.jl" begin
    p = parse_input("gauss/input.deck")
    @test p[:nx] == 10
    @test p[:a0] == 70
    @test p[:laser].lambda ≈ 800u"nm"
end
