//
//  HomeViewController+Delegate.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//

import UIKit

//MARK: UITableView
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

//MARK: UISearch
extension HomeViewController: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        navigationItem.titleView = nil
        configureSearchBarButton()
        presenter.clearValues()
        self.tableViewReload()
        listedPosts()
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        if !searchText.isEmpty || searchBar.text == nil {
            let filter = presenter.filterElements.filter({$0.title.contains(searchText)})
            presenter.elements = filter
            self.tableViewReload()
        } else {
            presenter.elements = presenter.filterElements
            self.tableViewReload()
        }
    }
}

