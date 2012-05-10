function run()
	a = 1
	s = 1
	while true
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
			if a == 10001
				 return s
			end
			a += 1
		end


		s += 2
	end
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")