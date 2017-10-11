function fetch_solver(options=Dict())

    haskey(options, :colorful_pod) ? colorful_pod=options[:colorful_pod] : colorful_pod="warmer"
    haskey(options, :log_level) ? log_level=options[:log_level] : log_level=100
    haskey(options, :timeout) ? timeout=options[:timeout] : timeout=7200
    haskey(options, :maxiter) ? maxiter=options[:maxiter] : maxiter=99
    haskey(options, :rel_gap) ? rel_gap=options[:rel_gap] : rel_gap=0.0001

    haskey(options, :enable_cache) ? enable_cache=options[:enable_cache] : enable_cache=false
    haskey(options, :cache_identifier) ? cache_identifier=options[:cache_identifier] : cache_identifier=hash(time())

    haskey(options, :bilinear_mccormick) ? bilinear_mccormick=options[:bilinear_mccormick] : bilinear_mccormick=false
    haskey(options, :bilinear_convexhull) ? bilinear_convexhull=options[:bilinear_convexhull] : bilinear_convexhull=true
    haskey(options, :monomial_convexhull) ? monomial_convexhull=options[:monomial_convexhull] : monomial_convexhull=true

    haskey(options, :minlp_local_solver) ? minlp_local_solver=options[:minlp_local_solver] : minlp_local_solver=POD.UnsetSolver()
    haskey(options, :nlp_local_solver) ? nlp_local_solver=options[:nlp_local_solver] : nlp_local_solver=IpoptSolver(print_level=0)
    haskey(options, :mip_solver) ? mip_solver=options[:mip_solver] : mip_solver=GurobiSolver(OutputFlag=0)

    haskey(options, :convhull_formulation_sos2) ? sos2=options[:convhull_formulation_sos2] : sos2=true
    haskey(options, :convhull_formulation_facet) ? facet=options[:convhull_formulation_facet] : facet=false
    haskey(options, :convhull_formulation_sos2aux) ? sos2aux=options[:convhull_formulation_sos2aux] : sos2aux=false
    haskey(options, :convhull_formulation_minib) ? minib=options[:convhull_formulation_minib] : minib=false

    haskey(options, :delta) ? delta=options[:delta] : delta=4
    haskey(options, :presolve) ? presolve=options[:presolve] : presolve=0

    haskey(options, :discretization_uniform_rate) ? uniform=options[:discretization_uniform_rate] : uniform=0
    haskey(options, :bound_basic_propagation) ? bound_basic_propagation=options[:bound_basic_propagation] : bound_basic_propagation=false

    haskey(options, :disc_ratio_branch) ? disc_ratio_branch=options[:disc_ratio_branch] : disc_ratio_branch=false
    haskey(options, :disc_ratio_branch_timeout) ? disc_ratio_branch_timeout=options[:disc_ratio_branch_timeout] : disc_ratio_branch_timeout=1
    haskey(options, :disc_ratio_branch_focus) ? disc_ratio_branch_focus=options[:disc_ratio_branch_focus] : disc_ratio_branch_focus="bound"

    haskey(options, :discretization_var_pick_algo) ? discretization_var_pick_algo=options[:discretization_var_pick_algo] : discretization_var_pick_algo=0
    haskey(options, :embedding) ? embedding=options[:embedding] : embedding=false
    haskey(options, :embedding_encode) ? embedding_encode=options[:embedding_encode] : embedding_encode="default"
    haskey(options, :embedding_ibs) ? embedding_ibs=options[:embedding_ibs] : embedding_ibs=false
    haskey(options, :embedding_link) ? embedding_link=options[:embedding_link] : embedding_link=false

    haskey(options, :use_SCIP) ? use_SCIP = options[:use_SCIP] : use_SCIP = false
    haskey(options, :use_BARON) ? use_BARON = options[:use_BARON] : use_BARON = false
    haskey(options, :use_IPOPT) ? use_IPOPT = options[:use_IPOPT] : use_IPOPT = false
    haskey(options, :use_KNITRO) ? use_KNITRO = options[:use_KNITRO] : use_KNITRO = false

    if use_SCIP
        info("Fetching a SCIP solver...")
        solver=SCIPSolver("limits/time", timeout, "limits/gap", rel_gap)
        return solver
    end

    if use_BARON
        info("Fetching a BARON solver...")
        solver=BARONSolver(LPSol=3, CplexLibName="libcplex1270.so", MaxTime=timeout)
        return solver
    end

    if use_IPOPT
        info("Fetching a IPOPT solver (LOCAL)...")
        solver=IpoptSolver()
        return solver
    end

    if use_KNITRO
        info("Fetching a KNITRO solver (LOCAL)...")
        solver=KnitroSolver(ms_enable=0, outle=1, maxtime_cpu=timeout)
        return solver
    end

    if haskey(options, :discretization_uniform_rate) && (options[:discretization_uniform_rate] > 0)
        solver=PODSolver(colorful_pod=colorful_pod,
                         minlp_local_solver=minlp_local_solver,
                         nlp_local_solver=nlp_local_solver,
                         mip_solver=mip_solver,
                         log_level=log_level,
                         rel_gap=rel_gap,
                         enable_cache=enable_cache,
                         cache_identifier=cache_identifier,
                         max_iter=1,
                         timeout=timeout,
                         discretization_add_partition_method="uniform",
                         discretization_uniform_rate=uniform,
                         monomial_convexhull=monomial_convexhull,
                         bilinear_convexhull=bilinear_convexhull,
                         bilinear_mccormick=bilinear_mccormick,
                         bound_basic_propagation=bound_basic_propagation,
                         convhull_formulation_sos2=sos2,
                         convhull_formulation_facet=facet,
                         convhull_formulation_sos2aux=sos2aux,
                         convhull_formulation_minib=minib,
                         discretization_ratio=delta,
                         presolve_bound_tightening=(presolve>0),
                         presolve_bound_tightening_algo=presolve,
                         disc_ratio_branch=disc_ratio_branch,
                         disc_ratio_branch_timeout=disc_ratio_branch_timeout,
                         disc_ratio_branch_focus=disc_ratio_branch_focus,
                         discretization_var_pick_algo=discretization_var_pick_algo,
                         embedding=embedding,
                         embedding_encode=embedding_encode,
                         embedding_ibs=embedding_ibs,
                         embedding_link=embedding_link)
    else
        solver=PODSolver(colorful_pod=colorful_pod,
                         minlp_local_solver=minlp_local_solver,
                         nlp_local_solver=nlp_local_solver,
                         mip_solver=mip_solver,
                         log_level=log_level,
                         rel_gap=rel_gap,
                         maxiter=maxiter,
                         timeout=timeout,
                         rel_gap=rel_gap,
                         enable_cache=enable_cache,
                         cache_identifier=cache_identifier,
                         monomial_convexhull=monomial_convexhull,
                         bilinear_convexhull=bilinear_convexhull,
                         bilinear_mccormick=bilinear_mccormick,
                         bound_basic_propagation=bound_basic_propagation,
                         convhull_formulation_sos2=sos2,
                         convhull_formulation_facet=facet,
                         convhull_formulation_sos2aux=sos2aux,
                         convhull_formulation_minib=minib,
                         discretization_ratio=delta,
                         presolve_bound_tightening=(presolve>0),
                         presolve_bound_tightening_algo=presolve,
                         disc_ratio_branch=disc_ratio_branch,
                         disc_ratio_branch_timeout=disc_ratio_branch_timeout,
                         disc_ratio_branch_focus=disc_ratio_branch_focus,
                         discretization_var_pick_algo=discretization_var_pick_algo,
                         embedding=embedding,
                         embedding_encode=embedding_encode,
                         embedding_ibs=embedding_ibs,
                         embedding_link=embedding_links)
    end

    return solver
end

function show_options()
    println("===========================================")
    println("        Avilable POD Option Keywards       ")
    println("===========================================")
    println("LOGGING     => :colorful_pod, :log_level")
    println("SUB-SOLVER  => :minlp_local_solver, :nlp_local_solver, :mip_solver")
    println("TERMINATION => :iterm, :timeout, :rel_gap")
    println("FORMULATION => :monomial_convexhull, :bilinear_convexhull, :bilinear_mccormick")
    println("               :convhull_formulation_sos2, :convhull_formulation_facet")
    println("               :convhull_formulation_minib, :convhull_formulation_sos2aux")
    println("BOUND       => :bound_basic_propagation")
    println("DISCRETIZE  => :discretization_ratio")
    println("               :disc_ratio_branch, :disc_ratio_branch_timeout, :disc_ratio_branch_focus,")
    println("               :discretization_var_pick_algo")
    println("EMBEDDING   => :embedding, :embedding_encode, :embedding_ibs")
    println("PRESOLVE    => :presolve_bound_tightening, presolve_bound_tightening_algo")
    return
end
