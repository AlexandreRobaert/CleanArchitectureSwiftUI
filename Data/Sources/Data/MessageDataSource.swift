//
//  File.swift
//  
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation
import Domain

public struct MessageDataSource: MessageDataSourceProcotol {
    public func getMessages() -> [Message] {
        [
            .init(id: 1, text: "Primeira mensagem"),
            .init(id: 2, text: "Segunda mensagem"),
            .init(id: 3, text: "Terceira mensagem")
        ]
    }
    
    public init() { }
}
