//
//  ViewController.swift
//  TP1
//
//  Created by Tekup-mac-1 on 23/1/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let names = ["Grace", "Henry", "Isabel", "Jack", "Katherine", "Leo", "Mia", "Noah", "Olivia", "Peter"]

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You Did Click Me ! \(names[indexPath.row])")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "tablecell",for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.delegate = self
        table.dataSource = self
    }


}

