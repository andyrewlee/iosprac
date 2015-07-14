//
//  SinglyNode.swift
//  07_SLLIV
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

class SinglyNode<T>: Node<T> {
    var next: SinglyNode<T>?
    init(value: T, nextNode: SinglyNode<T>?) {
        self.next = nextNode
        super.init(value: value)
    }
}