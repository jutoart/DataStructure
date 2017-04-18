//
//  main.swift
//  DataStructure
//
//  Created by Art Huang on 18/04/2017.
//  Copyright © 2017 Art Huang. All rights reserved.
//

import Foundation

// Linked list demo
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
