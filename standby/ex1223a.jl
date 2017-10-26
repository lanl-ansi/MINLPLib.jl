function ex1223a(fetch_solver::Function; options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

    m = Model(solver=fetch_solver(solver_options))

    #define variables and bounds
    @variable(m, x[1:7])
    setcategory(x[4], :Bin)
    setcategory(x[5], :Bin)
    setcategory(x[6], :Bin)
    setcategory(x[7], :Bin)

    @constraint(m, x[1] >= 0.0)
    @constraint(m, x[1] <= 10.0)
    @constraint(m, x[2] >= 0.0)
    @constraint(m, x[2] <= 10.0)
    @constraint(m, x[3] >= 0.0)
    @constraint(m, x[3] <= 10.0)

    @constraint(m, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]<=5)  #= e1: =#
    @constraint(m, x[1]+x[4]<=1.2)  #= e3: =#
    @constraint(m, x[2]+x[5]<=1.8)  #= e4: =#
    @constraint(m, x[3]+x[6]<=2.5)  #= e5: =#
    @constraint(m, x[1]+x[7]<=1.2)  #= e6: =#

    # @objective(m, Min, (-1 + x[1])^2 + (-2 + x[2])^2 + (-3 + x[3])^2 - x[4] - 3*x[5] - x[6] - 0.693147180559945*x[7] + 6)
    # Expanded objective
    @objective(m, Min, x[1]^2-2*x[1]+1 + x[2]^2-4*x[2]+4 + x[3]^2-6*x[3]+9 - x[4] - 3*x[5] - x[6] - 0.693147180559945*x[7] + 6)
    @NLconstraint(m, x[1]^2+x[2]^2+x[3]^2+x[6]<=5.5)  #= e2: =#
    @NLconstraint(m, x[2]^2+x[5]<=1.64)  #= e7: =#
    @NLconstraint(m, x[3]^2+x[6]<=4.25)  #= e8: =#
    @NLconstraint(m, x[3]^2+x[5]<=4.64)  #= e9: =#

    if verbose
        print(m)
    end

    return m
end
