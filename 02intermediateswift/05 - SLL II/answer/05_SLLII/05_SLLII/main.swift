//
//  main.swift
//  05_SLLII
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var sll = SinglyLinkedList<Int>()
sll.insertNodeWithValue(newValue: 0)
sll.insertNodeWithValue(newValue: 1, afterNodeWithValue: 0)
sll.insertNodeWithValue(newValue: 2, afterNodeWithValue: 1)

print(sll.head.next?.value)
print(sll.head.next?.next?.value)
print(sll.head.next?.next?.next?.value)