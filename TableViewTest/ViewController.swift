//
//  ViewController.swift
//  TableViewTest
//
//  Created by Sanjay Rai on 20/06/2015.
//  Copyright (c) 2015 Sanjay Rai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let names = [("Mick", "21"),
                 ("Paul", "17"),
                 ("John", "23"),
                 ("Josie", "23"),
                 ("Liam", "98"),
                 ("Matt", "21")]
    
    let otherNames = [("Lola", "21"),
                      ("Alfie", "17"),
                      ("Cameron", "23"),
                      ("Kirt", "23"),
                      ("Phil", "98"),
                      ("Smith", "21")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "First Group"
        }
        else {
            return "Second Group"  //Im adding a comment on the same line of a code. Testing on github LOL
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return self.names.count
        }
        else {
            return self.otherNames.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        if indexPath.section == 0 {
            let (name, age) = names[indexPath.row]
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = age
        }
        else {
            let (name, age) = otherNames[indexPath.row]
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = age
        }
        
        if indexPath.row >= 0 {
            let image = UIImage(named: "Stars")
            cell.imageView?.image = image
        }
        
        return cell
    }
}

