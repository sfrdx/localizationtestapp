//
//  ThemeManager.swift
//  Client1
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit
import Localization
import Client2Strings
import Client1Strings

final class ThemeManager {
    static let current: ApplicationThemeProtocol = {
        #if CLIENT1
            return Client1Theme()
        #elseif CLIENT2
            return Client2Theme()
        #endif
    }()
}

