function isPrime(n)
	for i=2:ifloor(sqrt(n))
		if (n % i == 0)
			return false
		end
	end

	return true
end

function run()
	r = 0

	n = 600851475143

	for i = 1:ifloor(sqrt(n))
#	for i = 1:1
		if (!isPrime(i))
			continue
		end

		if (n % i == 0)
			r = i
		end
	end

	return r
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")