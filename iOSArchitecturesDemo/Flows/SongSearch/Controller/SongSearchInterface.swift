//
//  SongSearchInterface.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 26.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation

protocol SongSearchViewInput: class {
    
    var searchResults: [ITunesSong] { get set }
    
    func showError(error: Error)
    
    func showNoResults()
    
    func hideNoResults()
    
    func throbber(show: Bool)
    
}

protocol SongSearchViewOutput {
    
    func viewDidSearch(with query: String)
    
    func viewDidSelectApp(_ app: ITunesSong)
    
}
