//
//  MenueVC.swift
//  Task_3
//
//  Created by Abdullah on 20/04/2022.
//

import UIKit

class MenueVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var Meals = ["Breakfast", "Dinner", "Desserts", "cooool"]
    var ItemType = ["All", "Plates", "Hot Drinks", "Iced Coffee", "test", "test", "test", "test"]

    @IBOutlet var ItemTypeCollectionView: UICollectionView!
    @IBOutlet var MealCollctionView: UICollectionView!
    
    
    @IBOutlet weak var ProductDetailsCollectionView: UICollectionView!
    
    @IBOutlet weak var previewCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MealCollctionView.delegate = self
        MealCollctionView.dataSource = self
        ItemTypeCollectionView.delegate = self
        ItemTypeCollectionView.dataSource = self
        ProductDetailsCollectionView.delegate = self
        ProductDetailsCollectionView.dataSource = self
        previewCollectionView.delegate = self
        previewCollectionView.dataSource = self
        
        
        
        
//        previewCollectionView.layer.shadowColor = UIColor.blue.cgColor
//        previewCollectionView.layer.shadowOffset = CGSize(width: 0, height: 5)
//        previewCollectionView.layer.shadowRadius = 3.0
//        previewCollectionView.layer.shadowOpacity = 0.7
//        previewCollectionView.layer.masksToBounds = false


    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == MealCollctionView {
            return Meals.count
        }
         if collectionView == ItemTypeCollectionView {
            return ItemType.count
        }
        
         if collectionView == ProductDetailsCollectionView {
            return 8
        }
         if collectionView == previewCollectionView {
            return 8
        }
        
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == MealCollctionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MealCell", for: indexPath) as? MealCVC
            cell!.MealLabel.text = Meals[indexPath.row]
//
//            cell!.layer.masksToBounds = true
//            cell!.layer.cornerRadius = cell!.frame.size.width/20
            
            
            if (indexPath.row == 0 && indexPath.section == 0){
                collectionView.selectItem(at: indexPath, animated: false, scrollPosition: UICollectionView.ScrollPosition.centeredHorizontally)
            }
        
            
            return cell!
        }
        
         if collectionView == ItemTypeCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemTypeCell", for: indexPath) as? ItemTypeCVC
            cell!.ItemTypeLabel.text = ItemType[indexPath.row]
            
            
            
            if (indexPath.row == 0 && indexPath.section == 0){
                collectionView.selectItem(at: indexPath, animated: false, scrollPosition: UICollectionView.ScrollPosition.centeredHorizontally)
            }
           
            return cell!
        }
        
        
         if collectionView == ProductDetailsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemDetailsCell", for: indexPath) as? ItemDetailsCVC
//            cell!.ItemTypeLabel.text = ItemType[indexPath.row]
            
            
            return cell!
        }
        
         if collectionView == previewCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PreviewCell", for: indexPath) as? PreviewCVC
//            cell!.ItemTypeLabel.text = ItemType[indexPath.row]
            print(indexPath)
            print("cool")
            
            return cell!
        }
        
        
        
        return UICollectionViewCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        
    }
    
}

extension MenueVC: UICollectionViewDelegateFlowLayout {
    // Distance Between Item Cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == MealCollctionView {
            return 17
        }
        
        if collectionView == ItemTypeCollectionView {
            return 43
        }
        
        if collectionView == ProductDetailsCollectionView {
            return 14
        }
        
        if collectionView == previewCollectionView {
            return 49
        }
        return 0
    }
    
    // Cell Margin
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == MealCollctionView {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 17)
        }
        
        if collectionView == ItemTypeCollectionView {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 43)
        }
        
        if collectionView == ProductDetailsCollectionView {
            return UIEdgeInsets(top: 0, left: 0, bottom: 19, right: 0)
        }
        
        if collectionView == previewCollectionView {
            return UIEdgeInsets(top: 24, left: 31, bottom: 23, right: 49)
        }
        
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
