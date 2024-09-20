//
//  File.swift
//  
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation

public struct Message: Identifiable {
    public let id: Int
    public let text: String
    
    public init(id: Int, text: String) {
        self.id = id
        self.text = text
    }
}
