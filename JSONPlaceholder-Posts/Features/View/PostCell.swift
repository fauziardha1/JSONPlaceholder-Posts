//
//  PostCell.swift
//  JSONPlaceholder-Posts
//
//  Created by FauziArda on 14/03/23.
//

import Foundation
import UIKit

class PostCell: UICollectionViewCell {
    static let identifier = "PostCellID"
    
    var title: String {
        didSet {
            label.text = title
        }
    }
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
