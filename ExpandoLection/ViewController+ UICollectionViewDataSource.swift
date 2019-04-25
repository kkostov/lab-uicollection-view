//
//  ViewController+ UICollectionViewDataSource.swift
//  ExpandoLection
//
//  Created by Konstantin Kostov on 25/04/2019.
//  Copyright © 2019 Konstantin Kostov. All rights reserved.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as? TrailBlazerCell else {
            return UICollectionViewCell()
        }
        
        let item = items[indexPath.row]
        
        cell.hb_set(item)
        
        cell.updateConstraintsIfNeeded()
        
        return cell
    }
    
    
}
