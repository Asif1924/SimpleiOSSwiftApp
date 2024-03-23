//
//  Fib.swift
//  SimpleiOSSwiftApp
//
//  Created by Asif Alli on 2024-03-23.
//

import Foundation

struct Fib {
    // Properties

    // Methods
    static func doFib( upTo argNum: Int)  -> Int{
        // Method implementation
        if(argNum<2){
            return argNum
        }else{
            return doFib(upTo: argNum-1) + doFib(upTo: argNum-2)
        }
    }
}
