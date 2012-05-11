# Brute force!
function run()
	i = 2520
	while true
		y = true

		for j = 11:20
			if (i % j != 0)
				y = false
				break
			end
		end

		if y
			return i
		end

		i += 2520
	end
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")