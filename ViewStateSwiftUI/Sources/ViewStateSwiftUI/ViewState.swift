//
//  ViewModelSwiftUI.swift
//  ViewModelSwiftUI
//
//  Created by Alexandre Robaert on 10/07/24.
//
import Foundation

public enum ViewState<SuccessType>: Equatable {
    
    case data(SuccessType)
    case error(Error)
    case loading
    case idle
    
    private var rawValue: String {
        String(describing: self)
    }
    
    public static func == (lhs: ViewState, rhs: ViewState) -> Bool {
        lhs.rawValue == rhs.rawValue
    }
}
