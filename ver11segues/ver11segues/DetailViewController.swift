//
//  DetailViewController.swift
//  ver11segues
//
//  Created by Richard H Woolley on 6/13/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var firstNameLabel: UILabel!

  @IBOutlet weak var LNL: UILabel!



  var selectedPerson: Person!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.firstNameLabel.text = self.selectedPerson.firstName
    self.LNL.text = self.selectedPerson.lastName

  }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

