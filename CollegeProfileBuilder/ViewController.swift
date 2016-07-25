//
//  ViewController.swift
//  CollegeProfileBuilder
//
//  Created by Daniel Korach on 7/25/16.
//  Copyright © 2016 Daniel Korach. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    var colleges : [College] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        editButton.tag = 0
        colleges.append(College(name: "University of Illinois", state: "Illinois", enrollment: 44087, image: UIImage(named: "Illinois")!))
        colleges.append(College(name: "University of Michigan", state: "Michigan", enrollment: 43625, image: UIImage(named: "Michigan")!))
        colleges.append(College(name: "University of Texas ", state: "Washington", enrollment: 50950, image: UIImage(named: "Texas")!))

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = colleges[indexPath.row].name
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            colleges.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
}