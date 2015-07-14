//
//  main.swift
//  14_HashTableII
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var hashTable = HashTable<SinglyLinkedList<String>>()
hashTable.linkPut("kobe")
hashTable.linkPut("randle")
print(hashTable.linkGet("kobe")?.value)
print(hashTable.linkGet("randle")?.value)
print(hashTable.linkGet("andrew")?.value)