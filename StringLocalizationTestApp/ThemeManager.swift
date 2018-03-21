//
//  ThemeManager.swift
//  Client1
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit

final class ThemeManager {
    static let current: ApplicationThemeProtocol = {
        #if CLIENT1
            return Client1Theme()
        #elseif CLIENT2
            return Client2Theme()
        #endif
    }()
}


protocol ApplicationThemeProtocol {
    var backgroundTheme: UIColor { get }
    var productName: String { get }
    var windowHeader: String { get }
    var productDescription: String { get }
    var companyCopywrite: String { get }
    var acknowledgements: String { get }
    
}
