function run()
	l = 0
	t = 1

	while true	
		l += t
		t += 1

		div = 0
		for i = 1:iceil(sqrt(l))
			if l % i == 0
				div += 2
			end
		end

		if div > 500
			return l
		end
	end
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")