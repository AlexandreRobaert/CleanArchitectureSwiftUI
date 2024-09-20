//
//  File.swift
//  Data
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation
import Domain

public struct MessageRepository: MessageRepositoryProtocol {
    
    private let dataSource: MessageDataSourceProcotol
    
    public init(dataSource: MessageDataSourceProcotol) {
        self.dataSource = dataSource
    }
    
    public func getMessages() -> [Message] {
        dataSource.getMessages()
    }
}
