//
//  main.swift
//  03_HeadNode
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

let node = Node<Int>(value: 6)
print(node.value)
node.value = 7
print(node.value)

let headNode = HeadNode<String>()
print(headNode.next)
headNode.next = "Hello"
print(headNode.next)