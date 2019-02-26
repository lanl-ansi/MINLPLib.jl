function convert_single_file(in_filename::String, out_filename::String)
    lines = readlines(in_filename, keep=true)
    
    new_lines = []
    for line in lines
        line = strip(line)
        if length(line) > 11 && line[1:11] == "setcategory"
            parts = split(line, ",")
            variable = strip(split(parts[1], "(")[2])
            if line[end-3:end-1] == "Bin"
                push!(new_lines, "set_binary("*variable*")")
            elseif line[end-3:end-1] == "Int"
                push!(new_lines, "set_integer("*variable*")")
            else
                @error "Got undefined setcategory in ", filename
            end
        elseif length(line) > 13 && line[1:13] == "setlowerbound"
            push!(new_lines, replace(line, "setlowerbound" => "set_lower_bound"))
        elseif length(line) > 13 && line[1:13] == "setupperbound"
            push!(new_lines, replace(line, "setupperbound" => "set_upper_bound"))
        else
            push!(new_lines, line)
        end
    end
    write(out_filename, join(new_lines, "\n"))
end

function convert_single_folder(folder::String)
    instances = readdir("instances/"*folder)
    for instance in instances
        convert_single_file("instances/"*folder*"/"*instance, "instances/"*folder*"/"*instance)
    end
end

function convert_all_folders()
    folders = readdir("instances")
    for folder in folders
        convert_single_folder(folder)
    end
end

convert_all_folders()

