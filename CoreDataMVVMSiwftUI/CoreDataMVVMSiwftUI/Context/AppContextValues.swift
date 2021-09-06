//
//  AppContextValues.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI


extension EnvironmentValues {
    var appContext: AppContextProtocol {
        get { self[AppContextKey.self] }
        set {self[AppContextKey.self] = newValue}
    }
}
