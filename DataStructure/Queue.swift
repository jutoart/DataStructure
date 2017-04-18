//
//  Queue.swift
//  DataStructure
//
//  Created by Art Huang on 18/04/2017.
//  Copyright © 2017 Art Huang. All rights reserved.
//

class Queue<T>
{
    private var _elements = [T]()
    
    var elements: [T] { return _elements }
    var count: Int { return _elements.count }
    var isEmpty: Bool { return _elements.count == 0 }
    
    func add(data: T) {
        _elements.insert(data, at: 0)
    }
    
    func remove() -> T? {
        return _elements.count > 0 ? _elements.removeLast() : nil
    }
    
    func peek() -> T? {
        return _elements.last
    }
}
