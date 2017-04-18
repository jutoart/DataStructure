//
//  Stack.swift
//  DataStructure
//
//  Created by Art Huang on 18/04/2017.
//  Copyright © 2017 Art Huang. All rights reserved.
//

class Stack<T: Equatable>
{
    private var _elements = [T]()
    
    var elements: [T] { return _elements }
    var isEmpty: Bool { return _elements.count == 0 }
    
    func push(data: T) {
        _elements.append(data)
    }
    
    func pop() -> T? {
        return _elements.count > 0 ? _elements.removeLast() : nil
    }
    
    func peek() -> T? {
        return _elements.last
    }
}
