/*
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.
*/

var deleteDuplicates = function(head) {
  var current = head;

  while (current && current.next) {
    if (current.next.val == current.val) {
      current.next = current.next.next;
    } else {
      current = current.next;
    }
  }

  return head;
};
