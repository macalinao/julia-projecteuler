function run()
	a = 0
	s = 1
	while s < 2000000
		r = true

		# Prime?
		i = 3
		while i <= ifloor(sqrt(s))
			if s % i == 0
				r = false
				break
			end

			i += 2
		end

		if r
			a += s
		end

		s += 2
	end
	return a
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")