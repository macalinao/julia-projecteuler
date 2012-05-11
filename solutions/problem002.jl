function run()
	r = 0

	a = 1
	b = 1
	c = 0

	while true
		c = a + b
		if (c % 2 == 0)
			r += c
		end

		a = b
		b = c

		if (b >= 4000000)
			break
		end
	end

	return r
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")