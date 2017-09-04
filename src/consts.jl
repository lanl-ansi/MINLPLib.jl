const POD_USERNAME = split(homedir())[end]

const POD_INSTANCE_NLP = ["nlp1", "nlp3"]
const POD_INSTANCE_CASTRO = ["castro$(i)" for i in 2:16]
const POD_INSTANCE_MULTI = ["multi3N", "multi4N", "multiKN"]
const POD_INSTANCE_POOLING = ["lee1", "lee2", "meyer4", "meyer10", "meyer15"]
const POD_INSTANCE_BLEND = ["blend029", "blend146", "blend480", "blend531", "blend718", "blend721", "blend852"]
const POD_INSTANCE_EX = ["ex1264", "ex1265", "ex1266", "ex1223a"]

const POD_INSTANCE = ["nlp1", "nlp3",
                        POD_INSTANCE_CASTRO,
                        POD_INSTANCE_MULTI,
                        POD_INSTANCE_POOLING,
                        POD_INSTANCE_BLEND,
                        POD_INSTANCE_EX,
                        "util", "meanvarx", "fuel" ;]

const POD_INSTANCE_BENCHMARK_SMALL = ["nlp1","nlp3","util","meanvarx","castro2m2",
                                      "ex1264","cstro5m2", "blend029","lee1","meyer4"] # problems that is suitable for testing
const POD_INSTANCE_BENCHMARK_LARGE = ["meyer4","meyer10","meyer15",
                                      "blend146","blend480","blend531","blend718","blend721","blend852",
                                      "castro11m2","castro12m2","castro13m2",
                                      "castro9m2","castro8m2","castro7m2","castro10m2",
                                      "castro14m2","castro15m2","castro16m2"]

const BLOCK_HEADER = ["Variables",
                    "Positive", # Variables
                    "Binary", # Variables
                    "Integer",
                    "Equations"]

const PROBTYPE = ["LP",      # Linear Programming
                "QCP",     # Quadratic Constraint Programming
                "NLP",     # Nonlinear Programming
                "DNLP",    # Nonlinear Programming with Discontinuous derivatives
                "MIP",     # Mixed Integer Programming
                "RMIP",    # Relaxed Mixed Integer Programming
                "MIQCP",   # Mixed Integer Quadratic Constraint Programming
                "MINLP",   # Mixed Integer Nonlinear Programming
                "RMIQCP",  # Relaxed Mixed Integer Quadratic Constraint Programming
                "RMINLP",  # Relaxed Mixed Integer Nonlinear Programming
                "MCP",     #
                "MPEC",
                "CNS"]
