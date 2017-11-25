@testset "Basic Loading and Basic Dimension Measurement" begin
    m = fetch_model("bcp", "3pk")
    @test length(m.colVal) == 31
    @test length(m.linconstr) == 0

    m = fetch_model("global", "abel")
    @test length(m.colVal) == 31
    @test length(m.linconstr) == 14

    m = fetch_model("ibm/CLay0203H")
    @test length(m.colVal) == 91
    @test length(m.linconstr) == 109

    m = fetch_model("inf", "inf_minlp_203")
    @test length(m.colVal) == 3
    @test length(m.linconstr) == 0

    m = fetch_model("minlp/ex1221")
    @test length(m.colVal) == 6
    @test length(m.linconstr) == 4

    m = fetch_model("minlp2/meanvarx")
    @test length(m.colVal) == 36
    @test length(m.linconstr) == 44

    m = fetch_model("morg", "convex1")
    @test length(m.colVal) == 47
    @test length(m.linconstr) == 72

    m = fetch_model("mpec/bard1")
    @test length(m.colVal) == 10
    @test length(m.linconstr) == 4

    m = fetch_model("mult3/m_10_3_0_100_1")
    @test length(m.colVal) == 11
    @test length(m.linconstr) == 0

    m = fetch_model("mult4", "m_10_4_0_100_1")
    @test length(m.colVal) == 11
    @test length(m.linconstr) == 0

    m = fetch_model("PODLib", "blend029")
    @test length(m.colVal) == 102
    @test length(m.linconstr) == 201

    m = fetch_model("poly/d2-n30-pos10-v1")
    @test length(m.colVal) == 31
    @test length(m.linconstr) == 8

    m = fetch_model("prince", "biggs3")
    @test length(m.colVal) == 7
    @test length(m.linconstr) == 0

    m = fetch_model("qcqp", "unitbox_c_8_8_1_25")
    @test length(m.colVal) == 9
    @test length(m.linconstr) == 0

    m = fetch_model("qcqp2", "g1_020_001_002_25_1")
    @test length(m.colVal) == 21
    @test length(m.linconstr) == 2

    m = fetch_model("qcqp3", "q_20_0_25_1")
    @test length(m.colVal) == 21
    @test length(m.linconstr) == 0
end
