//
//  main.swift
//  12_Trie
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

var trie = Trie<String>(character: "A")
trie.insert("ANDREW", value: "awesome")
trie.insert("ANDY", value: "amazing")
trie.insert("ANT", value: "what")

print(trie.get("ANDY"))
print(trie.get("ANT"))
print(trie.get("ANDREW"))