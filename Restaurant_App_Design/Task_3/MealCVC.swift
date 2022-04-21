//
//  MealCVC.swift
//  Task_3
//
//  Created by Abdullah on 20/04/2022.
//

import UIKit

class MealCVC: UICollectionViewCell {
    
    
    @IBOutlet weak var MealLabel: UILabel!
    

    
    override var isSelected: Bool {
          didSet {
              self.contentView.backgroundColor = isSelected ? UIColor.red : UIColor.white
//              self.imageView.alpha = isSelected ? 0.75 : 1.0
          }
    
        }
//    ccccc
    
    
}
