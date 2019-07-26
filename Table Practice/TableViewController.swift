//
//  TableViewController.swift
//  Table Practice
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

struct Cacti {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class StoriesTableViewController: UITableViewController {
    var allCacti = [
        Cacti(id : 1,
              title: "One Man Band",
              text: "By Old Dominion",
              image: "prickly-pear"),
        Cacti(id: 2,
              title: "In case you didn't know,",
              text: "By Brett Young.",
              image: "hedgehog"),
        Cacti(id: 3,
              title: "Famous",
              text: "By Mason Ramsey",
              image: "rebutia")
    ]

    override func viewDidLoad() {
      super.viewDidLoad()

      
       //self.clearsSelectionOnViewWillAppear = false
     
       //  self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
              return allCacti.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.detailTextLabel?.text =
            allCacti[indexPath.row].text;        //Configure the cell...
        cell.textLabel?.text = allCacti[indexPath.row].title
        cell.imageView?.image = UIImage(named: allCacti[indexPath.row].image)
        return cell
    }
   
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
  
    //override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     
      //  return true
    }

   // override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    //    if editingStyle == .delete {
            // Delete the row from the data source
        //    tableView.deleteRows(at: [indexPath], with: .fade)
    //    } else if editingStyle == .insert {
            


 

 
   // override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {


  //  override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
      
      //  return true

   
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      



