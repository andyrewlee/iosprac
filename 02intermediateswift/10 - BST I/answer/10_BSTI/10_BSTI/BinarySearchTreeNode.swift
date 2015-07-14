//
//  BinarySearchTreeNode.swift
//  10_BSTI
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

class BinarySearchTreeNode<T>: Node<T> {
    var left: BinarySearchTreeNode<T>?
    var right: BinarySearchTreeNode<T>?
    init(value: T, leftNode: BinarySearchTreeNode<T>?, rightNode: BinarySearchTreeNode<T>?) {
        left = leftNode
        right = rightNode
        super.init(value: value)
    }
}