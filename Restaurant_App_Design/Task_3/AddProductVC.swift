//
//  AddProductVC.swift
//  Task_3
//
//  Created by Abdullah on 21/04/2022.
//

import UIKit

class AddProductVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var AddImageCV: UICollectionView!
    
    var imageArry: [UIImage] = []
    var imageData: UIImage?
    
    var editImageIndex: Int = 0
    var editImageflag: Bool = false

    var testImage = [UIImage(systemName: "bag"), UIImage(systemName: "bag"), UIImage(systemName: "bag")]
    var targetImagePlace: Int?
    override func viewDidLoad() {
        super.viewDidLoad()

        AddImageCV.delegate = self
        AddImageCV.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArry.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddProductCell", for: indexPath) as? AddProductCVC else { return UICollectionViewCell() }

        cell.deleteImagePressed = {
            self.imageArry.remove(at: indexPath.row)
            self.AddImageCV.reloadData()
        }

        if imageArry.isEmpty {
            let checkImage = UIImage(named: "+.png")

            cell.AddProductImage.image = checkImage

            cell.AddProductImage.contentMode = .top
            cell.deleteButton.isHidden = true

            return cell
        }
        else if indexPath.row == imageArry.count {
            let checkImage = UIImage(named: "+.png")

            cell.AddProductImage.image = checkImage

            cell.AddProductImage.contentMode = .top

            cell.deleteButton.isHidden = true

            return cell
        }
        else {
            cell.AddProductImage.image = imageArry[indexPath.row]
            cell.AddProductImage.contentMode = .scaleToFill
            cell.deleteButton.isHidden = false
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == imageArry.endIndex {
            addImage()
        }
        else {
            editImageIndex = indexPath.row
            addImage()
            editImageflag = true
        }
    }
    
    private func addImage() {
        print("holaaaa")
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
//    private func editImage(){
//        print("edit")
//        let picker = UIImagePickerController()
//        picker.sourceType = .photoLibrary
//        picker.allowsEditing = true
//        picker.delegate = self
//
//        present(picker, animated: true)
//
//    }
//
}

extension AddProductVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        guard let image = info[.editedImage] as? UIImage else {
            print("User didn't select any images")
            return
        }

        if editImageflag == true {
            imageData = image
            imageArry[editImageIndex] = image

            AddImageCV.reloadData()
            dismiss(animated: true)
            
            editImageflag = false
        }
        else {
            imageData = image
            imageArry.append(imageData!)

            AddImageCV.reloadData()
            dismiss(animated: true)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}
