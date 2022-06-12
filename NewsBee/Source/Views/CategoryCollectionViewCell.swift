//
//  CategoryCollectionViewCell.swift
//  NewsBee
//
//  Created by 홍승현 on 2022/06/10.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
  
  static let identifier = "CategoryCollectionViewCell"
  
  private let categoryLabel: UILabel = {
    let label = UILabel()
    label.font = .systemFont(ofSize: 15, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment = .center
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(categoryLabel)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    categoryLabel.frame = contentView.bounds
  }
  
  func configure(with category: String) {
    categoryLabel.text = category
  }
}