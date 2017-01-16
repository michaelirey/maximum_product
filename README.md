### Problem ###
Find the maximum possible product of 3 integers in the array

### Assumptions ###
The input array will contain 3 or more integers

### Solutions ###

#### Solution 1: MaximumProduct ####

Complexity: O(n log n) time, O(1) space

The time complexity here is because of the sort.
While the code to generate correct answers is pretty straight
forward, the same results can be achieved using a single pass
of the array. See FastMaximumProduct

Usage:
```
input = [1, 3, 7, 9]
mp = MaximumProduct.new(input)
puts mp.maximum
```

#### Solution 2: FastMaximumProduct ####

Complexity: O(n) time, O(1) space

This is the most optimized solution to this problem. Calculating
the results in a single pass of the array.

Usage
```
input = [1, 3, 7, 9]
fmp = FastMaximumProduct.new(input)
puts fmp.maximum
```

### Tests ###
To run the tests first make sure you bundle. Then run
```
rspec
```

### Notes ###
The concept and steps as described in *Solution 2* gist could be simplified. We really only need to grab up the largest 3 values and the smallest 2.
Then we have all the values we need to compute a final result.




