//
//  LinkedList.swift
//  DataStructure
//
//  Created by Art Huang on 18/04/2017.
//  Copyright © 2017 Art Huang. All rights reserved.
//

class LinkedListNode<T>
{
    var data: T?
    var next: LinkedListNode?
    
    convenience init(_ data: T) {
        self.init()
        self.data = data
    }
}

class LinkedList<T>
{
    var head: LinkedListNode<T>?
    var count = 0
    
    func appendNode(for data: T) {
        if head == nil {
            head = LinkedListNode<T>(data)
        }
        else {
            var index = head
            
            while index!.next != nil {
                index = index!.next
            }
            
            let newNode = LinkedListNode<T>(data)
            index!.next = newNode
        }
        
        count += 1
    }
    
    func insertNode(for data: T, at pos: Int) -> Bool {
        if pos > count {
            return false
        }
        else {
            if pos == 0 {
                let newNode = LinkedListNode<T>(data)
                newNode.next = head
                head = newNode
                
            }
            else {
                var index = head
                
                for _ in 0..<pos-1 {
                    index = index?.next
                }
                
                let newNode = LinkedListNode<T>(data)
                newNode.next = index!.next
                index!.next = newNode
            }
            
            count += 1
            return true
        }
    }
    
    func removeFirst() -> T? {
        if let headNode = head {
            head = headNode.next
            count -= 1
            return headNode.data
        }
        
        return nil
    }
    
    func removeLast() -> T? {
        if var indexNode = head {
            if indexNode.next == nil {
                head = nil
                count -= 1
                return indexNode.data
            }
            else {
                while indexNode.next!.next != nil {
                    indexNode = indexNode.next!
                }
                
                let lastNode = indexNode.next!
                indexNode.next = lastNode.next
                count -= 1
                return lastNode.data
            }
        }
        
        return nil
    }
    
    func removeNode(at pos: Int) -> T? {
        if pos >= count {
            return nil
        }
        else {
            if pos == 0 {
                let nodeToRemove = head
                head = nodeToRemove!.next
                count -= 1
                return nodeToRemove!.data
            }
            else {
                var index = head
                
                for _ in 0..<pos-1 {
                    index = index!.next
                }
                
                let nodeToRemove = index!.next
                index!.next = nodeToRemove!.next
                count -= 1
                return nodeToRemove!.data
            }
        }
    }
    
    func printNodes() {
        var index = head
        
        while index != nil {
            if let data = index!.data {
                print("\(data)", terminator: "")
            }
            else {
                print("nil", terminator: "")
            }
            
            if index!.next != nil {
                print(" -> ", terminator: "")
            }
            
            index = index!.next
        }
        
        print()
    }
}
