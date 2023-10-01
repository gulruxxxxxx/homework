//Question 1
/**Given an array of integers nums and an integer target,
return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution,
and you may not use the same element twice.
You can return the answer in any order.
**/
void main() {}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> answer = [];
    late int number;
    for (int i = 0; i < nums.length; i++) {
      number = nums[i];
      for (int n = i + 1; n < nums.length; n++) {
        if (nums.length == 2) {
          answer = [0, 1];
        } else if (number + nums[n] == target && answer.isEmpty) {
          answer = [nums.indexOf(number), n];
        }
      }
      ;
    }
    ;

    return answer;
  }
}


//Question 2
/**You are given two non-empty linked lists representing two non-negative integers.
The digits are stored in reverse order,
and each of their nodes contains a single digit. 
Add the two numbers and return the sum as a linked list.
You may assume the two numbers do not contain any leading zero, except the number 0 itself.
**/

void main1() {
  recursive();
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? result = ListNode();
    recursive(result, l1, l2, 0);
    return result.next;
  }

  void recursive(ListNode? l, ListNode? l1, ListNode? l2, int cary) {
    if (l1 == null && l2 == null && cary == 0) return;
    int num = (l1?.val ?? 0) + (l2?.val ?? 0) + cary;
    cary = num ~/ 10;
    l?.next = ListNode(num % 10);
    recursive(l?.next, l1?.next, l2?.next, cary);
  }
}


//Question 3
/**
Given a string s, find the length of the longest substring
without repeating characters.
**/

void main2() {}

class Solution {
  int lengthOfLongestSubstring(String s) {
    var set = <String>{};
    int maxLength = 0;
    int l = 0;
    for (var r = 0; r < s.length; r++) {
      while (set.contains(s[r])) {
        set.remove(s[l]);
        l++;
      }

      set.add(s[r]);
      maxLength = max(maxLength, r - l + 1);
    }
    return maxLength;
  }
}


//Question 4
/**Given two sorted arrays nums1 and nums2 of size m and n respectively, 
return the median of the two sorted arrays.
The overall run time complexity should be O(log (m+n)).
**/

void main3() {

}

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    nums1.addAll(nums2);
    nums1 = nums1..sort((x, y) => x.compareTo(y));
    if (nums1.length == 1) {
      return nums1[0].toDouble();
    }

    if (nums1.length % 2 != 0) {
      return nums1[(((nums1.length - 1) / 2).round())].toDouble();
    } else {
      return (nums1[(nums1.length / 2).round()] +
              nums1[((nums1.length) / 2).round() - 1]) /
          2;
    }
  }
}


//Question 5
/** Given a string s, return the longest palindromic substring in s **/


void main4(){
  
}
class Solution {
    String longestPalindrome(String s) {
      if (s.isEmpty) return '';

      String maxString = s[0];

      for (int i = 0; i < s.length; i++) {
        int start = i - 1;
        int end = i + 1;

        while (start >= 0 && end < s.length) {
          if (s[start] == s[end]) {
            if (end + 1 - start > maxString.length) {
              maxString = s.substring(start, end + 1);
            }
            start--;
            end++;
          } else {
            break;
          }
        }
      }

      for (int i = 0; i < s.length; i++) {
        int start = i;
        int end = i + 1;

        while (start >= 0 && end < s.length) {
          if (s[start] == s[end]) {
            if (end + 1 - start > maxString.length) {
              maxString = s.substring(start, end + 1);
            }
            start--;
            end++;
          } else {
            break;
          }
        }
      }

      return maxString;
    }
}
