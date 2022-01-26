//
//  DescriptionView.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 25.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class DescriptionView: UIView {
    
    private(set) lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.numberOfLines = 15
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    
    // MARK: - UI
    
    private func setupLayout() {

        self.addSubview(self.descriptionLabel)
        
        NSLayoutConstraint.activate([

            self.descriptionLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12.0),
            self.descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5.0),
            self.descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
            ])
    }
}
