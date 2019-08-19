//
//  ViewController.swift
//  water-log
//
//  Created by Jake Stanger on 8/19/19.
//  Copyright © 2019 Jake Stanger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainTableView: UITableView!
    var myPets = ["pet1", "pet2", "pet3", "pet4"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "daNib", for: indexPath) as! customTableViewCell
        cell.mainText.text = myPets[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row \(myPets[indexPath.row])")
        performSegue(withIdentifier: "daDetailPage", sender: self)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(UINib(nibName: "customTableViewCell", bundle: nil), forCellReuseIdentifier: "daNib")
        
        //configureTableView()    
    }
    
//    func configureTableView() {
//        mainTableView.rowHeight = UITableView.automaticDimension
//        mainTableView.estimatedRowHeight = 40.0
//
//    }


}

