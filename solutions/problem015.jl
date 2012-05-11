load("bigint.jl")

function run()
	# Thank you Wikipedia. http://en.wikipedia.org/wiki/Binomial_coefficient#Factorial_formula
	div(factorial(BigInt(40)), (factorial(BigInt(20)) * factorial(BigInt(20))))
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")