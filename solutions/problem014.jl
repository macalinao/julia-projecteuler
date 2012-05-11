function run()
	u = zeros(Int64, 10000000)
	l = 0
	g = 0

	for i = 2:1000000
		r = 0
		n = i

		while true
			if n < 10000000 && u[n] != 0
				r += u[n]
				break
			end

			if n == 1
				u[i] = r
				break
			end

			n = n % 2 == 0 ? n / 2 : 3n + 1

			r += 1
		end

		if r > l
			l = r
			g = i
		end
	end

	return g
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")