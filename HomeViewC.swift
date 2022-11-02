//
//  ViewController.swift
//  fruits
//
//  Created by Anar Suleymanli on 06.10.22.
//

import UIKit

class HomeViewC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var fruits = ["Apple", "Avakado", "Banana"]
    var fruitsImage = [UIImage]()
    var fruitsInfo = ["Apple is fruit"]
    
    var choosefruitName = ""
    var choosefruitImage = UIImage()
    var choosefruitInfo = "fuyluykluyk"
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
     
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitsCell", for: indexPath)
        cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosefruitName = fruits[indexPath.row]
        choosefruitImage = fruitsImage[indexPath.row]
        choosefruitInfo = fruitsInfo[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        

        
       
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedName = choosefruitName
            destinationVC.selectedImage = choosefruitImage
            destinationVC.selectedInfo = choosefruitInfo
            
        }
    }
    
}
