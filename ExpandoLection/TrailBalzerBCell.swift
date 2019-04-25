//
//  TrailBlazerCell.swift
//  ExpandoLection
//
//  Created by Konstantin Kostov on 25/04/2019.
//  Copyright © 2019 Konstantin Kostov. All rights reserved.
//

import UIKit

class TrailBlazerBCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        hb_configureLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum Paddings: CGFloat {
        case horizontal = 16
        case vertical = 20
        case inner = 5
    }
    
    lazy var header: UILabel = {
        let view = UILabel(frame: CGRect.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 1
        view.textAlignment = .left
        view.text = ""
        return view
    }()
    
    
    func hb_configureLayout() {
        // here we create the content of the cell
        
        contentView.addSubview(header)
        
        contentView.layer.borderColor = UIColor.red.cgColor
        
        // layout constraints
        let _ = contentView.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Paddings.horizontal.rawValue),
            header.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Paddings.vertical.rawValue),
            header.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Paddings.horizontal.rawValue),
            header.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Paddings.vertical.rawValue),
            header.widthAnchor.constraint(equalToConstant: 250) // so it appears the same size as cells with statusview
            ])
    }
    
    var heightConstraint: NSLayoutConstraint?
    
    func hb_set(_ content: Item) {
        header.text = content.title
        
        setNeedsLayout()
    }
}
