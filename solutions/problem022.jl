function run()
    names_list = readall(open("../resources/names.txt"))
    names = split(names_list, ",", false)
    for i = 1:size(names, 1)
        names[i] = names[i][2:strlen(names[i]) - 1]
    end
    names_sort = sort(names)

    total = 0
    capa = int16('A') - 1
    for i = 1:size(names_sort, 1)
        name = names_sort[i]
        nt = 0
        for j = 1:strlen(name)
            nt += int16(name[j]) - capa
        end
        total += i * nt
    end
    return total
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")
