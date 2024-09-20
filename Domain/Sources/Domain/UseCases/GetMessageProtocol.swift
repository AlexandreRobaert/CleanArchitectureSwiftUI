//
//  File.swift
//  
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation

public protocol GetMessageProtocol {
    func execute() -> Result<[Message], UseCaseError>
}
