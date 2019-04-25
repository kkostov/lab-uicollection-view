//
//  ViewController.swift
//  ExpandoLection
//
//  Created by Konstantin Kostov on 25/04/2019.
//  Copyright © 2019 Konstantin Kostov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var collectionLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.itemSize = UICollectionViewFlowLayout.automaticSize
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        
        let myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: collectionLayout)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(TrailBlazerCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView.backgroundColor = UIColor.white
        
        return myCollectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       
        hb_prepareData()
        
        view.addSubview(collectionView)
    }
    
    func hb_prepareData() {
        items.append(Item(id: "1", title: "hello", isActive: false))
        items.append(Item(id: "2", title: "I am active maybe", isActive: true))
        items.append(Item(id: "3", title: "I am active maybe", isActive: false))
        items.append(Item(id: "4", title: "I am active maybe", isActive: false))
        items.append(Item(id: "5", title: "I am active maybe", isActive: false))
        items.append(Item(id: "6", title: "I am active maybe", isActive: false))
        items.append(Item(id: "7", title: "I am active maybe", isActive: true))
        items.append(Item(id: "8", title: "I am active maybe", isActive: false))
        items.append(Item(id: "9", title: "I am active maybe", isActive: true))
        items.append(Item(id: "10", title: "I am active maybe", isActive: false))
        items.append(Item(id: "11", title: "I am active maybe", isActive: false))
        items.append(Item(id: "12", title: "I am active maybe", isActive: true))
        items.append(Item(id: "13", title: "I am active maybe", isActive: false))
        items.append(Item(id: "14", title: "I am active maybe", isActive: true))
        items.append(Item(id: "15", title: "I am active maybe", isActive: false))
        items.append(Item(id: "16", title: "I am active maybe", isActive: false))
    }
    
    var items: [Item] = []
}


struct Item {
    var id: String?
    var title: String?
    var isActive: Bool = false
}

