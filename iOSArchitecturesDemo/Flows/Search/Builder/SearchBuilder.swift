//
//  SearchBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Евгений Старшов on 26.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class SearchModuleBuilder {
    
    static func build() -> (UIViewController & SearchViewInput) {
        let presenter = SearchPresenter()
        let viewController = SearchViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
