//
//  ViewController.swift
//  StringLocalizationTestApp
//
//  Created by Frederixon, Sara on 3/20/18.
//  Copyright © 2018 Frederixon, Sara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var titleBarTitle: UINavigationItem!
   @IBOutlet weak var productNameLabel: UILabel!
   @IBOutlet weak var productDescription: UILabel!
   @IBOutlet weak var copywriteCompany: UILabel!
   @IBOutlet weak var acknowledgements: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      view.backgroundColor = ThemeManager.current.backgroundTheme
      
      //traditional NSLocalizeString
      productNameLabel.text = ThemeManager.current.productName
      
      //Passthrough wrapper for NSLocalizeStringinTable
      titleBarTitle.title = ThemeManager.current.windowHeader
      
      //plist
      productDescription.text = ThemeManager.current.productDescription
      copywriteCompany.text =  ThemeManager.current.companyCopywrite
      acknowledgements.text =  ThemeManager.current.acknowledgements
      
      NSLocalizedString("View Controller Text", comment: "Should be in general Localized String")
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

