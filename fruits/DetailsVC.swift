//
//  DetailsVC.swift
//  Floewers
//
//  Created by Anar Suleymanli on 19.09.22.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    
    var selectedName = ""
    var selectedImage = UIImage()
    var selectedInfo = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLabel()
    }
    
    private func createLabel() {
        let infoLabel = UILabel(frame: CGRect(x: 0.5, y: 100, width: UIScreen.main.bounds.size.width - 10, height: 800))
        infoLabel.font = .systemFont(ofSize: 20)
        infoLabel.textAlignment = .center
        infoLabel.center = infoLabel.center
        infoLabel.text = selectedInfo
        infoLabel.numberOfLines = 0
        view.addSubview(infoLabel)
        
     
        
        
       
        titleLabel.text = selectedName
        imageView.image = selectedImage
        infoLabel.text = selectedInfo
      
    }
    
  
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "toTable", sender: nil)
    }
}

    
        
    

 
