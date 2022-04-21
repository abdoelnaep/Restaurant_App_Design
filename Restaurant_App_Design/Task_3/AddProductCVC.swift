//
//  AddProductCVC.swift
//  Task_3
//
//  Created by Abdullah on 21/04/2022.
//

import UIKit

class AddProductCVC: UICollectionViewCell {
    
//    var imagePlace:Int?
    var deleteImagePressed: (() -> Void)?

    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var AddProductImage: UIImageView!
    
    
    
    @IBAction func deletePressed(_ sender: Any) {
deleteImagePressed?()
    }
    //    @IBOutlet weak var removeImageButton: UIButton!
//   
//    
//    @IBAction func removeImage(_ sender: Any) {
//        
//    }
//    
  
}
