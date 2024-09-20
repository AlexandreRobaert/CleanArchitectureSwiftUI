//
//  File.swift
//  Home
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation
import ViewStateSwiftUI
import SwiftUI
import Domain
import HomeDomain
import Data

public class HomeViewModel: HomeViewModelProtocol {
    
    @Published
    public var state: ViewState<[Message]> = .idle
    public let useCase: GetMessageProtocol
    
    public init(useCase: GetMessageProtocol) {
        self.useCase = useCase
    }
    
    public func fetch() async {
        
        state = .loading
        let result = useCase.execute()
        
        switch result {
        case .success(let messages):
            state = .data(messages)
        case .failure(let failure):
            state = .error(failure)
        }
    }
}
