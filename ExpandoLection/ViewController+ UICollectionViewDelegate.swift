//
//  ViewController+ UICollectionViewDelegate.swift
//  ExpandoLection
//
//  Created by Konstantin Kostov on 25/04/2019.
//  Copyright © 2019 Konstantin Kostov. All rights reserved.
//

import UIKit

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        items[indexPath.row].isActive = !items[indexPath.row].isActive
        collectionView.reloadData()
    }
    
}
