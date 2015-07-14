//
//  main.swift
//  10_BSTI
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var bst = BinarySearchTree<Int>()
bst.insertNodeWithValue(5)
bst.insertNodeWithValue(4)
bst.insertNodeWithValue(6)
bst.insertNodeWithValue(2)

print(bst.root?.value)
print(bst.root?.left?.value)
print(bst.root?.left?.left?.value)
print(bst.root?.right?.value)