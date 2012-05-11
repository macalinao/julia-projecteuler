function isPalindrome(n)
	ns = "$n"
	l = strlen(ns)
	rev = ""
	for i=0:l-1
		rev = strcat(rev, ns[l - i])
	end

	return ns == rev
end

function run()
	r = 0

	for i=100:999
		for j=100:999

			s = i * j
			if (isPalindrome(s) && s > r)
				r = s
			end

		end
	end

	return r
end


i = time()
s = run()
i = time() - i

println("Answer: $s")
println("Executed in $i seconds")