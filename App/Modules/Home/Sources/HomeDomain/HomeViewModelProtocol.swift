//
//  File.swift
//  Home
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation
import Domain
import ViewStateSwiftUI

public protocol HomeViewModelProtocol: ViewModelProtocol where SuccessType == [Message] {
    var useCase: GetMessageProtocol { get }
}
