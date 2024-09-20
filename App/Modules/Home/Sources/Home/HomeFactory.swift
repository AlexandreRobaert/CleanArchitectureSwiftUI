//
//  File.swift
//  
//
//  Created by Alexandre Robaert on 16/07/24.
//

import Foundation
import Data
import Domain

public protocol HomeFactoryProtocol {
    static func makeHome() -> HomeView<HomeViewModel>
}

public enum HomeFactory: HomeFactoryProtocol {
    
    public static func makeHome() -> HomeView<HomeViewModel> {
        let dataSource = MessageDataSource()
        let repository = MessageRepository(dataSource: dataSource)
        let useCase = GetMessageUseCase(repository: repository)
        let viewModel = HomeViewModel(useCase: useCase)
        return HomeView(viewModel: viewModel)
    }
}
