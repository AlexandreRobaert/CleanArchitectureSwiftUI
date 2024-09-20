//
//  ViewModel.swift
//  ViewModelSwiftUI
//
//  Created by Alexandre Robaert on 10/07/24.
//

import Foundation
import SwiftUI

public protocol ViewModelProtocol: ObservableObject {
    associatedtype SuccessType
    
    var state: ViewState<SuccessType> { get }
    func fetch() async
}
