//
//  WhatsNewView.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 25.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class WhatsNewView: UIView {
    
    // MARK: - Subviews
    
    private(set) lazy var whatsNewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    
    private(set) lazy var averageNewVersionRatingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemGray
        label.font = UIFont.boldSystemFont(ofSize: 12.0)
        label.numberOfLines = 2
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
        self.addSubview(self.whatsNewLabel)
        self.addSubview(self.averageNewVersionRatingLabel)
        
        NSLayoutConstraint.activate([
        
            self.whatsNewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12.0),
            self.whatsNewLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16.0),
            self.whatsNewLabel.widthAnchor.constraint(equalToConstant: 150.0),
            
            self.averageNewVersionRatingLabel.topAnchor.constraint(equalTo: self.whatsNewLabel.bottomAnchor, constant: 10.0),
            self.averageNewVersionRatingLabel.leftAnchor.constraint(equalTo: self.whatsNewLabel.leftAnchor),
            self.averageNewVersionRatingLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.averageNewVersionRatingLabel.widthAnchor.constraint(equalToConstant: 150.0)
        
        
        ])
    }
}
