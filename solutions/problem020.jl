load("bigint.jl")

function run()
    # Laziness is a virtue
    num = BigInt(1)
    for i = 2:100
        num = num * i
    end
    ret = 0
    str = "$num"
    for i = 1:strlen(str)
        ret += parse_int(Int16, string(str[i]), 10)
    end
    return ret
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")
