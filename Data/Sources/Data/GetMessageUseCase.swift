//
//  File.swift
//  
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation
import Domain

public struct GetMessageUseCase: GetMessageProtocol {
    
    private var repository: MessageRepository
    
    public init(repository: MessageRepository) {
        self.repository = repository
    }
    
    public func execute() -> Result<[Message], UseCaseError> {
        return .success(repository.getMessages())
    }
}
