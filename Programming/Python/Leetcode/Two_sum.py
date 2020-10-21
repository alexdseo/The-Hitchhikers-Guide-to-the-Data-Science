# # Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to
# target.
class Solution:
    # @return a tuple, (index1, index2)
    def twoSum(self, nums, target):
        residual = {}
        for i, n in enumerate(nums):
            if n in residual:
                return [residual[n], i]
            else:
                residual[target - n] = i


num, target = [2, 11, 6, 7, 4], 9
fun = Solution()
print(fun.twoSum(num, target))
