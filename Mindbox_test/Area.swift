//
//  Area.swift
//  Mindbox_test
//
//  Created by Anatolii Shumov on 19.02.2024.
//

import Foundation

protocol Shape {
    var area: Double? { get }
}

class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    var area: Double? {
        guard radius >= 0 else { return nil }
        return Double.pi * radius * radius
    }
}

class Triangle: Shape {
    let a: Double
    let b: Double
    let c: Double
    
    init(a: Double, b: Double, c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    var area: Double? {
        guard a > 0 && b > 0 && c > 0 else { return nil }
        let p = (a + b + c) / 2
        return sqrt(p * (p - a) * (p - b) * (p - c))
    }
}

class Calculator {
    func area(shape: Shape) -> Double? {
        return shape.area
    }
}
