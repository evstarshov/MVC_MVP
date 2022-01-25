//
//  DescriptionViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 25.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class DescriptionViewContrioller: UIViewController {
    private let app: ITunesApp
    
    private var descriptionView: DescriptionView {
        return self.view as! DescriptionView
    }
    
    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = DescriptionView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    
    private func fillData() {
        self.descriptionView.descriptionLabel.text = app.appDescription
    }
}
