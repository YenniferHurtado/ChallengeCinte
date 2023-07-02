//
//  HomeViewController+Delegate.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeTableViewCell = tableView.dequeueReusableaCell(forIndexPath: indexPath)
        let item = presenter.elements[indexPath.row]
        cell.configure(data: item)
        return cell
    }
}

extension HomeViewController: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        navigationItem.titleView = nil
        tableView.reloadData()
        listedItems()
    }

}

