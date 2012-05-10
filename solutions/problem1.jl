function run()
	r = 0
	for i=1:999
		if (i % 3 == 0 || i % 5 == 0)
			r += i
		end
	end
	return r
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")