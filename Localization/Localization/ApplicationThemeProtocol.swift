//
//  ApplicationThemeProtocol.swift
//  Localization
//
//  Created by Frederixon, Sara on 3/22/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit

public protocol ApplicationThemeProtocol {
   var backgroundTheme: UIColor { get }
   var productName: String { get }
   var windowHeader: String { get }
   var productDescription: String { get }
   var companyCopywrite: String { get }
   var acknowledgements: String { get }
   
}
