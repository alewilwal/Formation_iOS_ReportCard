//
//  Mark.swift
//  ReportCard
//
//  Created by imac on 25/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import Foundation
import RealmSwift

class Mark: Object {
    private dynamic var value:Float = 0
    private dynamic var coeff:Int = 1
    
    public func getValue() -> Float {
        return value
    }
    
    public func getCoeff() -> Int {
        return coeff
    }
    
    public func setValue(newValue:Float) {
        if newValue >= 0 {
            realm?.beginWrite()
            self.value = newValue
            try! realm?.commitWrite()
        }
    }
    
    public func setCoeff(newCoeff:Int) {
        if newCoeff > 0 {
            realm?.beginWrite()
            self.coeff = newCoeff
            try! realm?.commitWrite()
        }
    }
}

