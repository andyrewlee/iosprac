//
//  HashTable.swift
//  14_HashTableII
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

struct HashTable<T> {
    var table = Array<T?>()
    var stringBuilt = false
    var linkBuilt = false
    func stringToAscii(str: String) -> Int {
        let string = str as NSString
        return Int(string.characterAtIndex(0))
    }
    func simpleHash(data: String) -> Int {
        return stringToAscii(data) - 65
    }
}

extension HashTable {
    mutating func simplePut(data: String) {
        if stringBuilt == false {
            for _ in 0...25 {
                table.append(nil)
            }
            stringBuilt = true
        }
        table[simpleHash(data.uppercaseString)] = data as? T
    }
    
    func simpleGet(data: String) -> String? {
        if let found = table[simpleHash(data.uppercaseString)] {
            return found as? String
        } else {
            return nil
        }
    }
}

extension HashTable {
    mutating func linkPut(data: String) {
        if linkBuilt == false {
            for _ in 0...25 {
                table.append(SinglyLinkedList<String>() as? T)
            }
            linkBuilt = true
        }
        let sll = table[simpleHash(data.uppercaseString)] as! SinglyLinkedList<String>
        sll.pushNodeWithValue(data)
    }
    
    func linkGet(data: String) -> SinglyNode<String>? {
        if let found = table[simpleHash(data.uppercaseString)] {
            let sll = found as! SinglyLinkedList<String>
            return sll.findNodeWithValue(data)
        } else {
            return nil
        }
    }
}