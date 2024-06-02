### 1. Two Sum problem: (https://leetcode.com/problems/two-sum/description/)
Given an array of integers **nums** and an integer **target**, return **indices** of the two numbers such that they add up to the target. <br>
You may **assume** that each input would have **exactly one solution**, and you may not use the same element twice. <br>
You can return the answer in **any order**.

### 2. Input/Output examples:
**Example 1:** <br>
_Input: nums = [2,7,11,15], target = 9 <br>
Output: [0,1] <br>
**Explanation**: Because nums[0] + nums[1] == 9, we return [0, 1]. <br>_

**Example 2:** <br>
_Input: nums = [3,2,4], target = 6 <br>
Output: [1,2]_

**Example 3:** <br>
_Input: nums = [3,3], target = 6 <br>
Output: [0,1]_

### 3. Solutions:
- We will need a Ruby hash (key, value) to store the array element and index. E.g: if the array is [3, 2, 4], then the hash will be {{3, 0}, {2, 1}, {4, 2}}.
- Why the key must be the element value and the value must be the index? <br>
++ Because we will need to check whether the key is in the hash, and the hash[key] only takes O(1) time complexity. <br>
++ And we store the element index in the value because it will be needed for the output. <br>
- Next, loop through the array, and for each element, check if the complement (target - current element) exists in the hash. <br />
++ If it does, return the indices of the current element and the complement. <br>
++ If it doesn't, add the current element to the hash with its index. <br>