//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 26.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation

struct SongCellModel {
    let title: String
    let subtitle: String?
    let rating: String?
}

final class SongCellModelFactory {
    
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(title: model.artistName ?? "No name",
                             subtitle: model.trackName,
                             rating: model.collectionName) // >>- { "\($0)" })
    }
}
