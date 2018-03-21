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
    var productName = NSLocalizedString("Client1", tableName: "Client1", comment: "product Name")
    
    var windowHeader = NSLocalizedString("Client1 Header", tableName: "Client1", comment: "window header")
    
    var productDescription = NSLocalizedString("Client1 Product Description", tableName: "Client1", comment: "product description")
    var companyCopywrite =  NSLocalizedString("Copywrite @ Client1 Company", tableName: "Client1",  comment: "company copywrite")
    
    var acknowledgements = NSLocalizedString("Strong thank you to all of Client1's Sponsers", tableName:"Client1", comment: "acknowledgements")
}
