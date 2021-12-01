//
//  ViewController.swift
//  MyFirstVieWController
//
//  Created by Ethan Sebag on 22/11/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    
    var titles = [String]()
    var descriptions = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cellContent", for: indexPath) as! TableViewCell
        let row = indexPath.row
        cell.title.text = titles[row]
        cell.desc.text = descriptions[row]
        cell.picture.image = UIImage(named: String(Int.random(in: 1...5)))
        
        return cell
    }
    

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         titles = ["titre1" , "titre2", "titre3","titre4" , "titre5", "titre6","titre7" , "titre8", "titre9","titre10","titre11" , "titre12", "titre13","titre14" , "titre15", "titre16","titre17" , "titre18", "titre19","titre20"]
        
         descriptions = ["texte qui donne des explications sur la cellule 1 ","texte qui donne des explications sur la cellule 2","texte qui donne des explications sur la cellule 3 texte qui donne des explications sur la cellule 4 ","texte qui donne des explications sur la cellule 4","texte qui donne des explications sur la cellule 5","texte qui donne des explications sur la cellule 6","texte qui donne des explications sur la cellule 7","texte qui donne des explications sur la cellule 8","texte qui donne des explications sur la cellule 9","texte qui donne des explications sur la cellule 10","texte qui donne des explications sur la cellule 11","texte qui donne des explications sur la cellule 12","texte qui donne des explications sur la cellule 13","texte qui donne des explications sur la cellule 14","texte qui donne des explications sur la cellule 15","texte qui donne des explications sur la cellule 16","texte qui donne des explications sur la cellule 17","texte qui donne des explications sur la cellule 18","texte qui donne des explications sur la cellule 19","texte qui donne des explications sur la cellule 20"]
        
        tableview.dataSource = self
    }
    



}

