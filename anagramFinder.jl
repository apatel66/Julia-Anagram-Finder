#Determines if an anagram by splitting into array, sortinf them alphabetically then comparing
function is_anagram(x, y)
   return sort(split(x,"")) == sort(split(y,""))
end

#Takes word from user and finds anagrams
function find_anagram(input)
   b = []

   #Open word file
   open("words.txt", "r") do f
	
	#Check if each word in the list is an anagram
	for (i, line) in enumerate(eachline(f))
	   
	   #If it is the same word, do not include
	   if input == line
		continue
	   end
	   
	   #If it is an anagram, push to the array
	   if is_anagram(input, line)
		push!(b, line)
	   end
	end
   end
 
   return b
end

#Prompt the user 5 times for a word to get the anagram (Case does not matter)
for i = 1:5
   print("Enter a word to get its anagrams: ")
   println(find_anagram(lowercase(readline(stdin))))
end

