//
//  Utilities.swift
//  RockPaperSccisor.Swift
//
//  Created by Davoodi, Alireza on 2018-10-17.
//  Copyright © 2018 Josue Benjamin Cabrera Rincon. All rights reserved.
//

import Foundation

struct Utilities {

    public static let intEqualityPredicate :(Int, Int)->Int = {
        
        if $0==$1 {return 0}
        else if $0>$1 {return 1}
        else {return 2}
    }
}
