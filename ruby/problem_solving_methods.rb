#Search method
def search_array(arr, n)
 i = 0
 indices = []

 while i < arr.length
   if arr[i] == n
     indices.push(i)
   end
   i += 1
 end
 if indices.empty?
   return nil
 else
   indices
 end
end

# arr = [42, 89, 23, 1, 1]
# p search_array(arr, 1)
# p search_array(arr, 24)

# Fibonacci numbers method
def fib(n)
 arr = [0, 1]
 i = 2
 until arr.length == n
   arr[ i] = arr [i -1] + arr[ i - 2]
   i += 1
 end
 arr
end

# p fib(6)
# p fib(100) - fib(99)
# We subtracted fib(99) from fib(100) to verify that the last
# number in the array would be 218922995834555169026
# instead of returning an array with many numbers

# Insertion sorting method
# Pseudo code
#==========================
# Take an array as a parameter
# WHILE i is less than the length of the array
 # WHILE index k is larger than 0 and less than i-1
   # Compare the value of i index in the array with the value of k index in the array
   # subtract 1 from index k
# add 1 to index i
def insertion_sort(arr)
 i = 1
 while i < arr.length
   k = i - 1
   num = arr[ i]
   while  k >=0 && num < arr[k]
     arr[k], arr [k + 1] = num, arr[ k]
     k -= 1
   end
   i += 1
 end
 arr
end

# arr = [4, 10, 1, 39, 2, 80, 8]
# p insertion_sort(arr)

# alphabetize = ["dog", "socks", "elephant", "cat", "apple"]
# p insertion_sort(alphabetize)