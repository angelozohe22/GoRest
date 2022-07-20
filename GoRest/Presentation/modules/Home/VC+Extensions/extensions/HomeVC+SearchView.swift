//
//  Home+SearchView.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import UIKit

extension HomeViewController: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }

        self.presenter?.fetchPosts(withName: text)
    }
    
}
