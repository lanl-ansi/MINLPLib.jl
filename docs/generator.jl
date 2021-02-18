using MINLPLib

LIBS = ["bcp","global", "ibm", "inf", "minlp",
        "minlp2", "morg", "mpec", "mult3", "mult4",
        "PODLib", "poly", "prince", "qcqp", "qcqp2",
        "qcqp3"]
LIBS = ["PODLib"]
function collect_dimension(libname::AbstractString, dat::Dict)

    names = MINLPLib.fetch_names(libname)
    for i in names
        meta = MINLPLib.fetch_meta(libname, i)
        if !isempty(meta)
            haskey(meta, "LOAD") ? dat[i]["lt"] = meta["LOAD"] : dat[i]["lt"] = -1.0
            dat[i]["sense"] = meta["OBJSENSE"]
            dat[i]["nvars"] = meta["NVARS"]
            dat[i]["nbinvars"] = meta["NBINVARS"]
            dat[i]["nintvars"] = meta["NINTVARS"]
            dat[i]["ncons"] = meta["NCONS"]
            dat[i]["nlincons"] = meta["NLINCONS"]
            dat[i]["nnlcons"] = meta["NNLCONS"]
            dat[i]["nothercons"] = meta["NCONS"] - meta["NLINCONS"] - meta["NNLCONS"]
            nlo = ""
            if haskey(meta, "NLOPERATOR")
                for j in meta["NLOPERATOR"]
                    nlo = "$(nlo) $(j)"
                end
            end
            dat[i]["nloperators"] = nlo
        end
    end

    return dat
end

function generate_lib_page(libname::AbstractString)
    isdir("temp") || mkdir("temp")
    f = open(joinpath("temp",libname), "w")
    names = MINLPLib.fetch_names(libname)
    N = length(names)
    DAT = Dict(i => Dict() for i in names)
    DAT = collect_dimension(libname, DAT)
    write(f, "$(N)\n\n")
    write(f, "| NAME | LT | NLOPERATOR | SENSE | VAR | BINVAR | INTVAR | CON | LINCON | NLCONS | OTHERCONS |\n")
    write(f, "|------|----|------------|-------|-----|--------|--------|-----|--------|--------|-----------|\n")
    err = 0
    for i in names
        try
            write(f,"| $i | $(round(DAT[i]["lt"],2)) | $(DAT[i]["nloperators"]) | $(DAT[i]["sense"]) | $(DAT[i]["nvars"]) | $(DAT[i]["nbinvars"]) | $(DAT[i]["nintvars"]) | $(DAT[i]["ncons"]) | $(DAT[i]["nlincons"]) | $(DAT[i]["nnlcons"]) | $(DAT[i]["nothercons"]) |\n")
        catch e
            err += 1
            write(f,"| $i | - | - | - | - | - | - | - | - | - |\n")
        end
    end
    write(f, "\nERROR $(err)\n")
    close(f)
end

for l in LIBS
    generate_lib_page(l)
end
