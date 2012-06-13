function run()
    res = zeros(Int64, 9999)
    sum = 0

    for i = 1:9999
        dsum = 1
        sq = sqrt(i)
        for j = 2:sq - 1
            if i % j == 0
                o = i / j
                dsum += j + o
            end
        end
        res[i] = dsum
    end

    for t = 1:9999
        n = res[t]
        if n > 9999 || t == n
            continue
        end
        if res[n] == t
            sum += t
        end
    end

    return sum
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")
