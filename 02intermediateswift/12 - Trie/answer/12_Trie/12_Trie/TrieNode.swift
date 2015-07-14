//
//  TrieNode.swift
//  12_Trie
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

class TrieNode<T: Equatable>: Node<T> {
    var char: String
    var next =  Array<TrieNode<T>>()
    
    init(chr: String, value: T?) {
        char = chr
        super.init(value: value)
    }
}