//
//  DetailViewController.swift
//  project1
//
//  Created by João Alexandre on 13/04/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var selectedPictureNumber = 0
    var totalPicture = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = "Imagem \(selectedPictureNumber) de \(totalPicture)"
        
        navigationController?.navigationBar.prefersLargeTitles = false
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
