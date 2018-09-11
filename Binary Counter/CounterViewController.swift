//
//  ViewController.swift
//  Binary Counter
//
//  Created by Tiange Wang on 9/11/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController, CountDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalOutlet: UILabel!
    var total: Decimal = 0
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        // Do Something
    }
    
    func tapMinus(_ tag: Int) {
        total -= pow(10, tag)
        totalOutlet.text = "Total: \(total)"
    }
    
    func tapPlus(_ tag: Int) {
        total += pow(10, tag)
        totalOutlet.text = "Total: \(total)"
    }
    
}
extension CounterViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.numLabel!.text = "\(pow(10, indexPath.row))"
        cell.delegate = self
        cell.tag = indexPath.row
        return cell
    }
    
}

