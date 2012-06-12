function run()
    day = 0
    sundays = 0
    for i = 1:99
        leap = (i % 4 == 0) && ((i % 100 != 0) || (i % 400 == 0))
        for m = 1:12
            if m == 9 || m == 4 || m == 6 || m == 11 # Sep Apr Jun Nov
                day += 30
            elseif m == 2
                if leap
                    day += 29
                else
                    day += 28
                end
            else
                day += 31
            end

            if day % 7 == 6
                sundays += 1
            end
        end
    end

    # Last day
    day += 1 
    if day % 7 == 6
        sundays += 1
    end

    return sundays
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")
