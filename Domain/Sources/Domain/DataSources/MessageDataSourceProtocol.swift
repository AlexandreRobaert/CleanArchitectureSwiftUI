//
//  File.swift
//  
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation

public protocol MessageDataSourceProcotol {
    func getMessages() -> [Message]
}
