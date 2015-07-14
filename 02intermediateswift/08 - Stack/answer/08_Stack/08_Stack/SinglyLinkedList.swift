//
//  SinglyLinkedList.swift
//  08_Stack
//
//  Created by Jae Hoon Lee on 7/6/15.
//  Copyright © 2015 Jae Hoon Lee. All rights reserved.
//

import Foundation

struct SinglyLinkedList<T: Equatable> {
    var head = HeadNode<SinglyNode<T>>()
    
    func findNodeWithValue(value: T) -> SinglyNode<T>? {
        if var currentNode = head.next {
            while currentNode.value != value  {
                if let nextNode = currentNode.next {
                    currentNode = nextNode
                } else {
                    return nil
                }
            }
            return currentNode
        } else {
            return nil
        }
    }
    
    func insertNodeWithValue(newValue newVal: T, afterNodeWithValue afterVal: T) -> Bool {
        let newNode = SinglyNode(value: newVal, nextNode: nil)
        if let currentNode = findNodeWithValue(afterVal) {
            newNode.next = currentNode.next
            currentNode.next = newNode
            return true
        } else {
            return false
        }
    }
    
    func insertNodeWithValue(newValue newVal: T) -> SinglyNode<T> {
        let newNode = SinglyNode(value: newVal, nextNode: nil)
        head.next = newNode
        return newNode
    }
    
    func displayNodes() {
        if var currentNode = head.next {
            print(currentNode.value)
            while currentNode.next != nil {
                currentNode = currentNode.next!
                print(currentNode.value)
            }
        }
    }
    
    func findNodeBeforeNodeWithValue(beforeValue bVal: T) -> SinglyNode<T>? {
        if var currentNode = head.next {
            while currentNode.next != nil && currentNode.next!.value != bVal {
                currentNode = currentNode.next!
            }
            return currentNode
        } else {
            return nil
        }
    }
    
    func removeNodeWithValue(value: T) -> Bool {
        if head.next?.value == value {
            head.next = head.next!.next
            return true
        } else {
            if let previousNode = findNodeBeforeNodeWithValue(beforeValue: value) {
                if previousNode.next != nil {
                    previousNode.next = previousNode.next!.next
                    return true
                } else {
                    return false
                }
            } else {
                return false
            }
        }
    }
    
    // MARK: Stack Methods
    func pop() -> SinglyNode<T>? {
        if var currentNode = head.next {
            while currentNode.next?.next != nil {
                currentNode = currentNode.next!
            }
            let nodeBeingPopped = currentNode.next
            currentNode.next = nil
            return nodeBeingPopped
        } else {
            return nil
        }
    }
    
    func pushNodeWithValue(newVal: T) -> SinglyLinkedList<T> {
        if var currentNode = head.next {
            while currentNode.next != nil {
                currentNode = currentNode.next!
            }
            currentNode.next = SinglyNode<T>(value: newVal, nextNode: nil)
            return self
        } else {
            insertNodeWithValue(newValue: newVal)
            return self
        }
    }
}