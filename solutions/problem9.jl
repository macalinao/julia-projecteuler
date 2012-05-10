function run()
	for i = 1:998
		for j = 1:998
			for k = 1:998
				ii = i*i
				jj = j*j
				kk = k*k
				if (i + j + k) == 1000 && (ii + jj == kk)
					return i*j*k
				end
			end
		end
	end
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")
