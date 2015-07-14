//
//  BinarySearchTree.swift
//  10_BSTI
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

struct BinarySearchTree<T: Comparable> {
    var root: BinarySearchTreeNode<T>? = nil
    
    mutating func insertNodeWithValue(val: T) {
        root = insertNodeFor(root, value: val)
    }
    
    func insertNodeFor(node: BinarySearchTreeNode<T>?, value: T) -> BinarySearchTreeNode<T> {
        if node == nil {
            return BinarySearchTreeNode(value: value, leftNode: nil, rightNode: nil)
        } else {
            if value < node!.value {
                node!.left = insertNodeFor(node!.left, value: value)
            } else {
                node!.right = insertNodeFor(node!.right, value: value)
            }
            return node!
        }
    }
}