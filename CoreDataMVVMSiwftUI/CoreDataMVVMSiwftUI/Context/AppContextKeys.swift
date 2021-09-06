//
//  AppContextKeys.swift
//  CoreDataMVVMSiwftUI
//
//  Created by Islam Md. Zahirul on 7/9/21.
//

import SwiftUI


struct AppContextKey: EnvironmentKey {
    static var defaultValue: AppContextProtocol = AppContext()
}


