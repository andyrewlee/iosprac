//
//  HashTable.swift
//  13_HashTableI
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

struct HashTable<T> {
    var table = Array<T?>()
    var stringBuilt = false
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