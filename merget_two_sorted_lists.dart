class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;

    ListNode? result = null;

    if (list1.val > list2.val) {
      result = list2;
      list2 = list2.next;
    } else {
      result = list1;
      list1 = list1.next;
    }

    ListNode? currentNode = result;

    while (list1 != null && list2 != null) {
      if (list1.val > list2.val) {
        currentNode?.next = list2;
        list2 = list2.next;
      } else {
        currentNode?.next = list1;
        list1 = list1.next;
      }
      currentNode = currentNode?.next;
    }

    if (list1 == null) {
      currentNode?.next = list2;
    }
    if (list2 == null) {
      currentNode?.next = list1;
    }

    return result;
  }
}
