function fetch_solver(;options=Dict(), kwargs...)

    additional_options = Dict(kwargs)
    options = merge(options, additional_options)

    haskey(options, :colorful_pod) ? colorful_pod=options[:colorful_pod] : colorful_pod=true
    haskey(options, :log_level) ? log_level=options[:log_level] : log_level=100
    haskey(options, :timeout) ? timeout=options[:timeout] : timeout=7200
    haskey(options, :maxiter) ? maxiter=options[:maxiter] : maxiter=99
    haskey(options, :rel_gap) ? rel_gap=options[:rel_gap] : rel_gap=0.0001

    haskey(options, :bilinear_mccormick) ? bilinear_mccormick=options[:bilinear_mccormick] : bilinear_mccormick=false
    haskey(options, :bilinear_convexhull) ? bilinear_convexhull=options[:bilinear_convexhull] : bilinear_convexhull=true
    haskey(options, :monomial_convexhull) ? monomial_convexhull=options[:monomial_convexhull] : monomial_convexhull=true

    haskey(options, :minlp_local_solver) ? minlp_local_solver=options[:minlp_local_solver] : minlp_solver=POD.UnsetSolver()
    haskey(options, :nlp_local_solver) ? nlp_solver=options[:nlpsolver] : nlp_solver=IpoptSolver(print_level=0)
    haskey(options, :mip_solver) ? mip_solver=options[:mipsolver] : mip_solver=GurobiSolver(OutputFlag=0)

    haskey(options, :convhull_formulation_sos2) ? sos2=options[:sos2] : sos2=true
    haskey(options, :convhull_formulation_facet) ? facet=options[:facet] : facet=false
    haskey(options, :convhull_formulation_sos2aux) ? sos2aux=options[:facet] : sos2aux=true
    haskey(options, :convhull_formulation_minib) ? minib=options[:minib] : minib=true

    haskey(options, :delta) ? delta=options[:delta] : delta=4
    haskey(options, :presolve) ? presolve=options[:presolve] : presolve=0

    haskey(options, :discretization_uniform_rate) ? uniform=options[:discretization_uniform_rate] : uniform=4

    haskey(options, :bound_basic_propagation) ? bound_basic_propagation=options[:bound_basic_propagation] : bound_basic_propagation=false

    haskey(options, :disc_ratio_branch) ? disc_ratio_branch=options[:disc_ratio_branch] : disc_ratio_branch=false
    haskey(options, :disc_ratio_branch_timeout) ? disc_ratio_branch_timeout=options[:disc_ratio_branch_timeout] : disc_ratio_branch_timeout=1
    haskey(options, :disc_ratio_branch_focus) ? disc_ratio_branch_focus=options[:disc_ratio_branch_focus] : disc_ratio_branch_focus="bound"

    haskey(options, :discretization_var_pick_algo) ? discretization_var_pick_algo=options[:discretization_var_pick_algo] : discretization_var_pick_algo=0
    haskey(options, :discretization_var_pick_dynamic) ? discretization_var_pick_dynamic=options[:discretization_var_pick_dynamic] : discretization_var_pick_dynamic=false
    haskey(options, :discretization_var_minimum) ? discretization_var_minimum=options[:discretization_var_minimum] : discretization_var_minimum=25
    haskey(options, :discretization_var_level) ? discretization_var_level=options[:discretization_var_level] : discretization_var_level=0.5

    if haskey(options, :uniform) && (options[:uniform] > 0)
        uniform=options[:uniform]
        # Special solver fetch
        solver=PODSolver(colorful_pod=colorful_pod,
                         nlp_local_solver=nlp_solver,
                         mip_solver=mip_solver,
                         log_level=log_level,
                         rel_gap=rel_gap,
                         maxiter=maxiter,
                         timeout=timeout,
                         discretization_add_partition_method="uniform",
						 discretization_uniform_rate=uniform,
                         monomial_convexhull=convhull,
                         bilinear_convexhull=convhull,
                         bilinear_mccormick=!convhull,
                         convhull_formulation_sos2=sos2,
                         convhull_formulation_facet=facet,
                         convhull_formulation_sos2aux=sos2ux,
                         convhull_formulation_minib=minib,
                         discretization_ratio=delta,
                         presolve_bound_tightening=(presolve>0),
                         presolve_bound_tightening_algo=presolve,
                         disc_ratio_branch=disc_ratio_branch,
                         disc_ratio_branch_timeout=disc_ratio_branch_timeout,
                         disc_ratio_branch_focus=disc_ratio_branch_focus,
                         discretization_var_pick_algo=discretization_var_pick_algo,
                         discretization_var_pick_dynamic=discretization_var_pick_dynamic,
                         discretization_var_minimum=discretization_var_minimum,
                         discretization_var_level=discretization_var_level)
    else
        # General Solver Fetch
        solver=PODSolver(colorful_pod=colorful_pod,
                         nlp_local_solver=nlp_solver,
                         mip_solver=mip_solver,
                         log_level=log_level,
                         rel_gap=rel_gap,
                         maxiter=maxiter,
                         timeout=timeout,
                         monomial_convexhull=convhull,
                         bilinear_convexhull=convhull,
                         bilinear_mccormick=!convhull,
                         convhull_formulation_sos2=sos2,
                         convhull_formulation_facet=facet,
                         convhull_formulation_sos2aux=sos2ux,
                         convhull_formulation_minib=minib,
                         discretization_ratio=delta,
                         presolve_bound_tightening=(presolve>0),
                         presolve_bound_tightening_algo=presolve,
                         disc_ratio_branch=disc_ratio_branch,
                         disc_ratio_branch_timeout=disc_ratio_branch_timeout,
                         disc_ratio_branch_focus=disc_ratio_branch_focus,
                         discretization_var_pick_algo=discretization_var_pick_algo,
                         discretization_var_pick_dynamic=discretization_var_pick_dynamic,
                         discretization_var_minimum=discretization_var_minimum,
                         discretization_var_level=discretization_var_level)
    end

    return solver
end
