function fetch_solver(options=Dict())

    haskey(options, :mip_solver) ? mip_solver=options[:mip_solver] : mip_solver=GurobiSolver(OutputFlag=0)
    haskey(options, :nlp_solver) ? nlp_solver=options[:nlp_solver] : nlp_solver=IpoptSolver(print_level=0)
    haskey(options, :loglevel) ? log_level=options[:loglevel] : log_level=1
    haskey(options, :convhill) ? convhull=options[:convhull] : convhull=true
    haskey(options, :sos2) ? sos2=options[:sos2] : sos2=true
    haskey(options, :facet) ? facet=options[:facet] : facet=false
    haskey(options, :sos2aux) ? sos2=options[:sos2aux] : sos2aux=false
    haskey(options, :minib) ? minib=options[:minib] : minib=false
    haskey(options, :delta) ? delta=options[:delta] : delta=4
    haskey(options, :presolve) ? presolve=options[:presolve] : presolve=0
    haskey(options, :timeout) ? timeout=options[:timeout] : timeout=7200
    haskey(options, :rel_gap) ? rel_gap=options[:rel_gap] : rel_gap=0.0001
    haskey(options, :dev_test) ? dev_test=options[:dev_test] : dev_test=false
    haskey(options, :colorful_pod) ? colorful_pod=options[:colorful_pod] : colorful_pod=false

    if haskey(options, :uniform) && (options[:uniform] > 0)
        uniform=options[:uniform]
        # Special solver fetch
        solver=PODSolver( nlp_local_solver=nlp_solver,
                           mip_solver=mip_solver,
                           log_level=1,
                           rel_gap=rel_gap,
                           maxiter=1,
                           timeout=timeout,
                           discretization_add_partition_method="uniform",
						   discretization_uniform_rate=uniform,
                           bilinear_convexhull=convhull,
                           convhull_formulation_sos2=sos2,
                           convhull_formulation_facet=facet,
                           convhull_formulation_sos2aux=sos2aux,
                           convhull_formulation_minib=minib,
                           discretization_ratio=delta,
                           presolve_bound_tightening=(presolve>0),
                           presolve_bound_tightening_algo=presolve,
                           colorful_pod=colorful_pod)
    else
        # General Solver Fetch
        solver=PODSolver(dev_test=dev_test,
                           nlp_local_solver=nlp_solver,
                           mip_solver=mip_solver,
                           log_level=1,
                           rel_gap=rel_gap,
                           timeout=timeout,
                           bilinear_convexhull=convhull,
                           convhull_formulation_sos2=sos2,
                           convhull_formulation_facet=facet,
                           convhull_formulation_sos2aux=sos2aux,
                           convhull_formulation_minib=minib,
                           discretization_ratio=delta,
                           presolve_bound_tightening=(presolve>0),
                           presolve_bound_tightening_algo=presolve,
                           colorful_pod=colorful_pod)
    end

    return solver
end

function show_options()
    println("===========================================")
    println("             POD Option Keywards           ")
    println("===========================================")
    return
end
