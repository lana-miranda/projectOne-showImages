//
//  DetailViewController.swift
//  Project1 - 100 days of swift
//
//  Created by Lana on 6/30/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var ImageView: UIImageView!
    var selectedImage: String?
    var totalPictures: Int = 0
    var currentPosition: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(currentPosition) of \(totalPictures)"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage{
            ImageView.image = UIImage(named: imageToLoad)
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
