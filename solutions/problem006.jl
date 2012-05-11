# Brute force!
function run()
	sqs = 0
	sum = 0

	for i = 1:100
		sqs += i * i
		sum += i
	end

	return (sum * sum) - sqs
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")