//
//  ArrayExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 11/06/2015.
//  Copyright © 2015 SF. All rights reserved.
//

import Foundation

extension Array {
    
    func initial() -> Array {
        return self.initial(1)
    }
    
    func initial(initialElements : Int) -> Array {
        guard initialElements > self.count else { return self}
        
        return Array(self[0..<initialElements])
    }
    
    func remove(firstNumberOfElements : Int) -> Array {
        return Array(self[firstNumberOfElements..<self.count])
    }
}