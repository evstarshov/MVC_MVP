//
//  SongHeaderViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 26.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class SongDetailHeaderViewController: UIViewController {
    
    // MARK: - Properties
    
    private let song: ITunesSong
    
    private let imageDownloader = ImageDownloader()
    
    private var songDetailHeaderView: SongDetailHeaderView {
        return self.view as! SongDetailHeaderView
    }
    
    // MARK: - Init
    
    init(song: ITunesSong) {
        self.song = song
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = SongDetailHeaderView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    
    private func fillData() {
        self.downloadImage()
        self.songDetailHeaderView.titleLabel.text = song.artistName
        self.songDetailHeaderView.subtitleLabel.text = song.trackName
        self.songDetailHeaderView.ratingLabel.text = song.collectionName  //averageRating.flatMap { "\($0)" }
    }
    
    private func downloadImage() {
        guard let url = self.song.artwork else { return }
        self.imageDownloader.getImage(fromUrl: url) { [weak self] (image, _) in
            self?.songDetailHeaderView.imageView.image = image
        }
    }
}

