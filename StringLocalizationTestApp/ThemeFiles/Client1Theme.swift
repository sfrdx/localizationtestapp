//
//  Client1Theme.swift
//  Client1
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit

struct Client1Theme: ApplicationThemeProtocol {
   var backgroundTheme = UIColor.green
   var productName = NSLocalizedString("Client1", tableName: "Client1", bundle: Bundle(identifier: "com.sfx.Client1") ?? .main, comment: "product name")
   
   //Missing from xliff file
   var windowHeader = {
      Client1Theme.localizeString("Client1 Header", comment: "window header")
   }()
   
   //This does not work these strings and tables will not be generated in the resource file
   static func localizeString(_ key: String, comment: String) -> String {
      return NSLocalizedString(key, tableName: "Client1", comment: comment)
   }
   
   //Plist files are cleaner and easier to manage with strings, also safer when you have a string enum for the keys
   //However plist files are not generated in the xliff even if you mark them for localization
   var clientStrings: [String : String] = {
      if let plistURL = Bundle.main.url(forResource: "Client1Strings", withExtension: "plist"),
         let dictionary = NSDictionary(contentsOf: plistURL) as? [String: String] {
         return dictionary
      }
      return [:]
   }()
   
   func string(_ key: ClientStringKeys) -> String {
      return clientStrings[key.rawValue] ?? "NOT FOUND"
   }
}
