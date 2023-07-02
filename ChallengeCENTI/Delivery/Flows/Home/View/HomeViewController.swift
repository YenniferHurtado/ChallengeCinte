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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        listedItems()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 18)
    }
    
    func listedItems() {
        showHud()
        presenter.listedPosts { [weak self] isSuccess in
            guard let self = self else { return }
            isSuccess ? tableView.reloadData() : Alert.showEmptyAlert(on: self)
            hideHud()
        }
    }
    
    func setupUI() {
        title = Localizable.HomeView.title.localized
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerNib(HomeTableViewCell.self)
    }
    
}
