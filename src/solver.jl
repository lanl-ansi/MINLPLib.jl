function fetch_solver(;options=Dict(), kwargs...)

    additional_options = Dict(kwargs)
    options = merge(options, additional_options)

    haskey(options, :mip_solver) ? mip_solver=options[:mip_solver] : mip_solver=GurobiSolver(OutputFlag=0)
    haskey(options, :nlp_solver) ? nlp_solver=options[:nlp_solver] : IpoptSolver(print_level=0)
    haskey(options, :log_level) ? log_level=options[:log_level] : log_level=1
    haskey(options, :sos2) ? sos2=options[:sos2] : sos2=true
    haskey(options, :facet) ? facet=options[:facet] : facet=false
    haskey(options, :sos2b) ? sos2=options[:facet] : sos2b=true
    haskey(options, :minibi) ? minib=options[:minib] : minib=true
    haskey(options, :delta) ? delta=options[:delta] : delta=4
    haskey(options, :presolve) ? presolve=options[:presolve] : presolve=0
    haskey(options, :timeout) ? timeout=options[:timeout] : timeout=7200
    haskey(options, :rel_gap) ? rel_gap=options[:rel_gap] : rel_gap=0.0001

    if haskey(options, :uniform) && (options[:uniform] > 0)
        uniform=options[:uniform]
        # Special solver fetch
        solver=PODSolver(nlp_local_solver=nlp_solver,
                           mip_solver=mip_solver,
                           log_level=1,
                           rel_gap=rel_gap,
                           maxiter=1,
                           timeout=timeout,
                           discretization_add_partition_method="uniform",
						   discretization_uniform_rate=uniform,
                           bilinear_convexhull=convhull,
                           convexhull_use_sos2=sos2,
                           convexhull_use_facet=facet,
                           convexhull_use_sos2_alter=sos2b,
                           discretization_ratio=delta,
                           presolve_bound_tightening=(presolve>0),
                           presolve_bound_tightening_algo=presolve)
    else
        # General Solver Fetch
        solver=PODSolver(nlp_local_solver=nlp_solver,
                           mip_solver=mip_solver,
                           log_level=1,
                           rel_gap=rel_gap,
                           timeout=timeout,
                           bilinear_convexhull=convhull,
                           convexhull_use_sos2=sos2,
                           convexhull_use_facet=facet,
                           convexhull_use_sos2_alter=sos2b,
                           discretization_ratio=delta,
                           presolve_bound_tightening=(presolve>0),
                           presolve_bound_tightening_algo=presolve)
    end

    return solver
end
