//
//  FullViewController.swift
//  Handover
//
//  Created by Aman on 22/12/20.
//  Copyright © 2020 Aman. All rights reserved.
//

import UIKit

class FullViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Dashboard"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var arrlbl = ["BRAS","SRC","API","LDAP","LATENCY","CEA","HANDOVER","MUSIC"]
    var arrImg = [ #imageLiteral(resourceName: "airtelicon"),#imageLiteral(resourceName: "employee"),#imageLiteral(resourceName: "airtelicon"),#imageLiteral(resourceName: "employee"),#imageLiteral(resourceName: "airtelicon"),#imageLiteral(resourceName: "employee"),#imageLiteral(resourceName: "handover"),#imageLiteral(resourceName: "music")]
       
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrlbl.count
        }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            
            cell.img.image = arrImg[indexPath.row]
            cell.lbl.text  = arrlbl[indexPath.row]
            cell.layer.cornerRadius = 10
            cell.layer.masksToBounds = true
            return cell
        }
     
}

    extension FullViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: (self.collectionView.bounds.size.width - 20) / 2, height: 200)
        
        }

}
