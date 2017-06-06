//
//  FibSeqFile.swift
//  fibonacciSequence.Thinkful
//
//  Created by William H Fulton IV on 6/3/17.
//  Copyright © 2017 IVdev. All rights reserved.
//

import Foundation


class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt64]
    
    init(maxNumber: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        if maxNumber == 0 && includesZero == false {
            values = []
        } else if maxNumber == 0 {
            values = [0]
        } else {
            var sequence: [UInt64] = [0,1,1]
            var nextNumber: UInt64 = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                let (sum, didOverflow) = UInt64.addWithOverflow(lastNumber, secondToLastNumber)
                if didOverflow == true {
                    print("Overflow! The next number is too big to store in a UInt64!")
                    break
                }
                nextNumber = sum
            }
            if includesZero == false {
                sequence.remove(at:0)
            }
            values = sequence
        }
    }
    
    init(numberOfItemsInSequence: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        if numberOfItemsInSequence == 0 {
            values = []
        } else if numberOfItemsInSequence == 1 {
            if includesZero == true {
                values = [0]
            } else {
                values = [1]
            }
        } else {
            var sequence: [UInt64]
            if includesZero == true {
                sequence = [0,1]
            } else {
                sequence = [1,1]
            }
            for _ in 2 ..< numberOfItemsInSequence {
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                let (nextNumber, didOverflow) = UInt64.addWithOverflow(lastNumber, secondToLastNumber)
                if didOverflow == true {
                    print("Overflow! The next number is too big to store in a UInt64!")
                    break
                }
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
}

