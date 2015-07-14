//
//  main.swift
//  09_Queue
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var sll = SinglyLinkedList<Int>()
sll.enqueueNodeWithValue(1)
sll.enqueueNodeWithValue(2)
sll.displayNodes()
sll.dequeue()
sll.displayNodes()