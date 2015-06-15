//
//  ViewController.swift
//  ver11segues
//
//  Created by Richard H Woolley on 6/13/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  var people = [Person]()

  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.dataSource = self
    let Richard = Person(firstName: "Rick", lastName: "Woolley")
    let Kazumi = Person(firstName: "Luke", lastName: "Nishiko")
    self.people.append(Richard)
    self.people.append(Kazumi)
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    let personToDisplay = self.people[indexPath.row]
    cell.textLabel?.text = personToDisplay.firstName + " " + personToDisplay.lastName
    return cell
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowDetailViewController" {
      let detailViewController = segue.destinationViewController as! DetailViewController
      let indexPath = self.tableView.indexPathForSelectedRow()
      let selectedRow = indexPath!.row
      let selectedPerson = self.people[selectedRow]
      //println(selectedPerson.firstname)
      detailViewController.selectedPerson = selectedPerson
    }
  }
}
