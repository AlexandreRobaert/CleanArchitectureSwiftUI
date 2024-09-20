//
//  File.swift
//  Domain
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation

public protocol MessageRepositoryProtocol {
    func getMessages() -> [Message]
}
