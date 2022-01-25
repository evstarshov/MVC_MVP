//
//  WhatsNewViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 25.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class WhatsNewViewController: UIViewController {
    
    private let app: ITunesApp
    
    private var whatsNewView: WhatsNewView {
        return self.view as! WhatsNewView
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
        self.view = WhatsNewView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    
    private func fillData() {
        self.whatsNewView.whatsNewLabel.text = "Что нового..."
    }
}
