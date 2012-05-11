onez = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4]
tens = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6]
hnds = map(x -> x + 10, onez)
hnds[1] = 0

teen = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
onethousand = 11

function run()
	s = 0

	# Hundreds
	for i = 1:10

		# Tens
		for j = 1:10

			# Ones
			for k = 1:10
				r = 0

				# Teen check
				if j == 2
					r += hnds[i] + teen[k]

				# Hundred check
				elseif i > 1 && j == 1 && k == 1
					r += hnds[i] - 3

				else
					r = hnds[i] + tens[j] + onez[k]
				end

				s += r
				println("$(i - 1)$(j - 1)$(k - 1) is $(r) aka $(hnds[i]) + $(tens[j]) + $(onez[k])")

			end
		end
	end

	s += onethousand
	return s
end

i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")