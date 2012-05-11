load("bigint.jl")

function run()
	a = BigInt(1)
	for i = 1:1000
		a *= 2
	end

	s = string(a)
	r = 0
	for i = 1:strlen(s)
		r += parse_int(Int64, string(s[i]), 10)
	end
	return r
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")