//
//  BinarySearchTree.swift
//  DataStructure
//
//  Created by Art Huang on 20/04/2017.
//  Copyright © 2017 Art Huang. All rights reserved.
//

class BinarySearchTreeNode<T: Comparable>
{
    var data: T
    var left: BinarySearchTreeNode?
    var right: BinarySearchTreeNode?
    
    init(data: T) {
        self.data = data
    }
}

class BinarySearchTree<T: Comparable>
{
    private var _count = 0
    
    var root: BinarySearchTreeNode<T>?
    var count: Int { return _count }
    
    func add(with data: T) {
        let newTreeNode = BinarySearchTreeNode(data: data)
        
        if root == nil {
            root = newTreeNode
            _count += 1
        }
        else {
            var index = root
            
            while true {
                if index!.data == data {
                    // Do nothing
                    return
                }
                else if index!.data < data {
                    if index!.right == nil {
                        index!.right = newTreeNode
                        _count += 1
                        return
                    }
                    else {
                        index = index!.right
                    }
                }
                else {
                    if index!.left == nil {
                        index!.left = newTreeNode
                        _count += 1
                        return
                    }
                    else {
                        index = index!.left
                    }
                }
            }
        }
    }
    
    func remove(with data: T) -> Bool {
        var index = root
        var parent: BinarySearchTreeNode<T>?
        
        while index != nil {
            if index!.data == data {
                break
            }
            else if index!.data < data {
                parent = index
                index = index!.right
            }
            else {
                parent = index
                index = index!.left
            }
        }
        
        if let indexNode = index {
            var successor: BinarySearchTreeNode<T>?
            
            switch (indexNode.left, indexNode.right) {
            case (.some, nil):
                successor = indexNode.left
            case (nil, .some):
                successor = indexNode.right
            case (.some, .some):
                successor = indexNode.right
                
                while successor!.left != nil {
                    successor = successor!.left
                }
            default:
                break
            }
            
            if let parentNode = parent {
                if parentNode.left!.data == data {
                    parentNode.left = successor
                }
                else {
                    parentNode.right = successor
                }
            }
            else {
                root = successor
            }
            
            return true
        }
        else {
            return false
        }
    }
    
    func search(for data: T) -> BinarySearchTreeNode<T>? {
        var index = root
        
        while index != nil {
            if index!.data == data {
                break
            }
            else if index!.data < data {
                index = index!.right
            }
            else {
                index = index!.left
            }
        }
        
        return index
    }
}
