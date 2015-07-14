//
//  main.swift
//  11_BSTII
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

print("inOrder")
bst.inOrder(bst.root)
print("preOrder")
bst.preOrder(bst.root)
print("postOrder")
bst.postOrder(bst.root)