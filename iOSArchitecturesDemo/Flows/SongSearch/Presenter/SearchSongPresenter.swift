//
//  SearchSongPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 26.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class SongSearchPresenter {
    
    private let searchService = ITunesSearchService()
    
    weak var viewInput: (UIViewController & SongSearchViewInput)?
    
    
    private func requestSong(with query: String) {
        self.searchService.getSongs(forQuery: query) { [weak self] result in
            guard let self = self else { return }
            self.viewInput?.throbber(show: false)
            result
                .withValue { songs in
                    guard !songs.isEmpty else {
                        self.viewInput?.showNoResults()
                        return
                    }
                    self.viewInput?.hideNoResults()
                    self.viewInput?.searchResults = songs
                }
                .withError {
                    self.viewInput?.showError(error: $0)
                }
        }
    }
    
    private func openSongDetails(with song: ITunesSong) {
        let songDetaillViewController = SongDetailViewController(song: song)
        self.viewInput?.navigationController?.pushViewController(songDetaillViewController, animated: true)
    }
    
}

// MARK: - SearchViewOutput
extension SongSearchPresenter: SongSearchViewOutput {
    
    func viewDidSearch(with query: String) {
        self.viewInput?.throbber(show: true)
        self.requestSong(with: query)
    }
    
    func viewDidSelectApp(_ song: ITunesSong) {
        self.openSongDetails(with: song)
    }
}
