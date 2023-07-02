//
//  HomeViewController.swift
//  ChallengeCENTI
//
//  Created by Yennifer Hurtado Arce on 2/07/23.
//
//


import UIKit

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: HomePresenter
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.sizeToFit()
        searchBar.showsCancelButton = true
        searchBar.becomeFirstResponder()
        searchBar.tintColor = .black
        return searchBar
    }()
    
    init(presenter: HomePresenter) {
        self.presenter = presenter
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureSearchBarButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        listedItems()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 18)
    }

}

 extension HomeViewController {
    
    func listedItems() {
        showHud()
        presenter.listedPosts { [weak self] isSuccess in
            guard let self = self else { return }
            isSuccess ? tableView.reloadData() : Alert.showEmptyAlert(on: self, handler: reloadList)
            hideHud()
        }
    }
    
    @objc func reloadList(_ sender: UIAlertAction) {
        listedItems()
    }
    
    func setupUI() {
        title = Localizable.HomeView.title.localized
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isScrollEnabled = false
        tableView.registerNib(HomeTableViewCell.self)
    }
    
    
    func configureSearchBarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search,
                                                            target: self, action: #selector(showSearchBar))
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    
    @objc func showSearchBar() {
        configureSearchBar()
    }
    
    func configureSearchBar() {
        tableView.reloadData()
        navigationItem.rightBarButtonItem = nil
        navigationItem.titleView = searchBar
    }
}
