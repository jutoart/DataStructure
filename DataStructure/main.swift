//
//  main.swift
//  DataStructure
//
//  Created by Art Huang on 18/04/2017.
//  Copyright © 2017 Art Huang. All rights reserved.
//

import Foundation

// Linked list demo
print("== Linked List ==")
let linkedList = LinkedList<Int>()
linkedList.appendNode(for: 3)
linkedList.printNodes()
_ = linkedList.insertNode(for: 5, at: 0)
linkedList.printNodes()
_ = linkedList.insertNode(for: 6, at: 3)
linkedList.printNodes()
linkedList.appendNode(for: 7)
linkedList.printNodes()
_ = linkedList.insertNode(for: 2, at: 1)
linkedList.printNodes()
linkedList.appendNode(for: 0)
linkedList.printNodes()
linkedList.appendNode(for: 4)
linkedList.printNodes()
_ = linkedList.removeFirst()
linkedList.printNodes()
_ = linkedList.removeLast()
linkedList.printNodes()
_ = linkedList.removeNode(with: 3)
linkedList.printNodes()
_ = linkedList.removeNode(with: 8)
linkedList.printNodes()
_ = linkedList.removeNode(at: 1)
linkedList.printNodes()
_ = linkedList.removeNode(at: 0)
linkedList.printNodes()
print()

// Stack demo
print("== Stack ==")
let stack = Stack<Int>()
stack.push(data: 2)
stack.push(data: 3)
stack.push(data: 1)
print("Peek \(stack.peek()!)")
print("Peek \(stack.peek()!)")
print("Pop \(stack.pop()!)")
print("Peek \(stack.peek()!)")
print()

// Queue demo
print("== Queue ==")
let queue = Queue<Int>()
queue.add(data: 2)
queue.add(data: 3)
queue.add(data: 1)
print("Peek \(queue.peek()!)")
print("Pop \(queue.remove()!)")
print("Peek \(queue.peek()!)")
print()
