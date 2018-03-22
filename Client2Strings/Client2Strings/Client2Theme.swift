//
//  Client2Theme.swift
//  Client1
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit
import Localization

public struct Client2Theme: ApplicationThemeProtocol {
   
   public init() {
      
   }
   
   public var backgroundTheme = UIColor.orange
   public var productName = NSLocalizedString("Client2", tableName: "Client2", comment: "product name")
   
   //Missing from xliff file
   public var windowHeader = NSLocalizedString("Client2 Header", tableName: "Client2", comment: "window header")
   
   public var productDescription = NSLocalizedString("Client2 Product Description", tableName: "Client2", comment: "product description")
   public var companyCopywrite =  NSLocalizedString("Copywrite @ Client2 Company", tableName: "Client2",  comment: "company copywrite")
   
   public var acknowledgements = NSLocalizedString("Strong thank you to all of Client2's Sponsers", tableName: "Client2", comment: "acknowledgements")
   
   public var newString = NSLocalizedString("This is the new String", tableName: "Client2", comment: "RAARRR")
}
