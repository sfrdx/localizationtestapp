//
//  Client1Theme.swift
//  Client1
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit
import Localization

public struct Client1Theme: ApplicationThemeProtocol {
   public init() {}
   
   public var backgroundTheme = UIColor.green
   public var productName = NSLocalizedString("Client1", tableName: "Client1", comment: "product Name")
   
   public var windowHeader = NSLocalizedString("Client1 Header", tableName: "Client1", comment: "window header")
   
   public var productDescription = NSLocalizedString("Client1 Product Description", tableName: "Client1", comment: "product description")
   public var companyCopywrite =  NSLocalizedString("Copywrite @ Client1 Company", tableName: "Client1",  comment: "company copywrite")
   
   public var acknowledgements = NSLocalizedString("Strong thank you to all of Client1's Sponsers", tableName:"Client1", comment: "acknowledgements")
}
