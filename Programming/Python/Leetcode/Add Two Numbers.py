# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse
# order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1, l2):
        n1,n2 =0,0
        for i, n in enumerate(l1):  ##Can't iterate through linked list
            n1 += (10 ** i) * n
        for i, n in enumerate(l2):
            n2 += (10 ** i) * n

        n = str(n1 + n2)
        l = [int(n[len(n)-1-i]) for i in range(len(n))]

        return l

list1, list2 = [2,4,3], [5,6,4]
fun = Solution()
print(fun.addTwoNumbers(list1,list2))