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

const POD_INSTANCE_BENCHMARK_SMALL = [] # problems that is suitable for testing
const POD_INSTANCE_BENCHMARK_LARGE = []
const POD_INSTANCE_BENCHMARK_ALL = []
