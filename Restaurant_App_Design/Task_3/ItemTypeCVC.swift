//
//  ItemTypeCVC.swift
//  Task_3
//
//  Created by Abdullah on 20/04/2022.
//

import UIKit

class ItemTypeCVC: UICollectionViewCell {
    
    @IBOutlet weak var ItemTypeLabel: UILabel!
    
    
    
    
    
    override var isSelected: Bool {
          didSet {
              self.ItemTypeLabel.alpha = isSelected ? 0.75 : 0.34
          }
    
        }
}
