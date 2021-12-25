//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Najd Alsughaiyer on 25/12/2021.
//

import UIKit

class ViewController: UIViewController {

    var colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rainbowCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}
