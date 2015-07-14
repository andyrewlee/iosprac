//
//  main.swift
//  13_HashTableI
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var hashTable = HashTable<String>()
hashTable.simplePut("kobe")
hashTable.simplePut("randle")
print(hashTable.simpleGet("kobe"))
print(hashTable.simpleGet("randle"))
print(hashTable.simpleGet("andrew"))