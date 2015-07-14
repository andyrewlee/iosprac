//
//  main.swift
//  08_Stack
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var sll = SinglyLinkedList<Int>()
sll.pushNodeWithValue(1)
sll.pushNodeWithValue(2)
sll.displayNodes()
sll.pop()
sll.displayNodes()