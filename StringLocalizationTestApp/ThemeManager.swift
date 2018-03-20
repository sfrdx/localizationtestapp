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

enum ClientStringKeys: String {
   case productDescription
   case copywriteCompany
   case acknowledgements
}

protocol ApplicationThemeProtocol {
   var backgroundTheme: UIColor { get }
   var productName: String { get }
   var windowHeader: String { get }
   
   //Export for localization does not seem to understand the idea of a template function, missing from Xliff file
   static func localizeString(_ key: String, comment: String) -> String
   
   //Loads from Plist, despite PList localization does not appear in Xliff
   var clientStrings: [String: String] { get }
   func string(_ key: ClientStringKeys) -> String
}
