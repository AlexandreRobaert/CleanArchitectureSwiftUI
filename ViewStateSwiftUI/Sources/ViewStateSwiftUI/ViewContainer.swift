//
//  ViewContainer.swift
//  ViewModelSwiftUI
//
//  Created by Alexandre Robaert on 10/07/24.
//
import Foundation
import SwiftUI

public struct ViewContainer<ViewModel: ViewModelProtocol, Success: View, Failure: View, Loading: View, SuccessType: Any>: View where ViewModel.SuccessType == SuccessType {
    
    private let onRefresh: (() -> Void)?
    private let reloadOnAppear: Bool
    
    @ViewBuilder let success: (SuccessType) -> Success
    @ViewBuilder let failure: (Error) -> Failure
    @ViewBuilder let loading: () -> Loading
    
    @StateObject private var viewModel: ViewModel
    
    public init(viewModel: ViewModel,
                reloadOnAppear: Bool = false,
                onRefresh: (() -> Void)? = nil,
                success: @escaping (SuccessType) -> Success,
                failure: @escaping (Error) -> Failure,
                loading: @escaping () -> Loading) {
        
        _viewModel = StateObject(wrappedValue: viewModel)
        self.onRefresh = onRefresh
        self.reloadOnAppear = reloadOnAppear
        self.success = success
        self.failure = failure
        self.loading = loading
    }
    
    public var body: some View {
        content()
            .task {
                if reloadOnAppear {
                    switch viewModel.state {
                    case .idle, .loading:
                        break
                    default:
                        await viewModel.fetch()
                    }
                }
            }
    }
    
    @ViewBuilder private func content() -> some View {
        switch viewModel.state {
        case .data(let successType):
            success(successType)
        case .error(let error):
            failure(error)
        case .loading:
            loading()
        case .idle:
            EmptyView()
                .task {
                    await viewModel.fetch()
                }
        }
    }
}
