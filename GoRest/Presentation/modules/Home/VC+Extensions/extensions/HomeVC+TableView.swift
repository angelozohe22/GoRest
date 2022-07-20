//
//  Home+TableView.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataTVC", for: indexPath) as? DataTableViewCell
        else { return UITableViewCell() }
        
        let post = postList[indexPath.row]
        
        cell.setData(title: post.title, description: post.body)
        
        return cell
    }
    
}
