//
//  Client2Theme.swift
//  Client1
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit

struct Client2Theme: ApplicationThemeProtocol {
    
    var backgroundTheme = UIColor.orange
    var productName = NSLocalizedString("Client2", tableName: "Client2", comment: "product name")
    
    //Missing from xliff file
    var windowHeader = NSLocalizedString("Client2 Header", tableName: "Client2", comment: "window header")
    
    var productDescription = NSLocalizedString("Client2 Product Description", tableName: "Client2", comment: "product description")
    var companyCopywrite =  NSLocalizedString("Copywrite @ Client2 Company", tableName: "Client2",  comment: "company copywrite")
    
    var acknowledgements = NSLocalizedString("Strong thank you to all of Client2's Sponsers", tableName: "Client2", comment: "acknowledgements")
    
    var newString = NSLocalizedString("This is the new String", tableName: "Client2", comment: "RAARRR")
}
