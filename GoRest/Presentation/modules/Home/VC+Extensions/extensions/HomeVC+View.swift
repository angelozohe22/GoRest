//
//  Home+View.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation
import UIKit

extension HomeViewController {
    
    func setupViews(){
        setupNavigation()
        setupSearchView()
        setupTableView()
    }
    
    private func setupNavigation(){
        self.title = Constants.appTitle
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .white
        
        navigationItem.searchController = self.searchBarController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    private func setupSearchView() {
        searchBarController.searchResultsUpdater = self
        searchBarController.obscuresBackgroundDuringPresentation = false
        self.definesPresentationContext = true
    }
    
    private func setupTableView(){
        self.tableView.layer.cornerRadius = 12.0
    }
    
    
    
}
