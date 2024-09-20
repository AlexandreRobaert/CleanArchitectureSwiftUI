//
//  SwiftUIView.swift
//  Home
//
//  Created by Alexandre Robaert on 16/07/24.
//

import SwiftUI
import ViewStateSwiftUI
import HomeDomain

public struct HomeView<ViewModel: HomeViewModelProtocol>: View {
    
    @StateObject private var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        ViewContainer(viewModel: viewModel) { messages in
            VStack {
                ForEach(messages) {
                    Text($0.text)
                }
            }
        } failure: { error in
            Text("Error")
        } loading: {
            Text("Loading...")
        }
    }
}
