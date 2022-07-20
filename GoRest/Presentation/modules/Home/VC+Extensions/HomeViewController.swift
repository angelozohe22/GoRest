//
//  HomeViewController.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    static let identifier = "HomeVC"
    
    @IBOutlet weak var cardViewContainer: CardView!
    
    @IBOutlet weak var idtLoading: UIActivityIndicatorView!
    @IBOutlet weak var lblLoading: UILabel!
    
    @IBOutlet weak var imgEmpty: UIImageView!
    @IBOutlet weak var lblTitleEmpty: UILabel!
    @IBOutlet weak var lblDescriptionEmpty: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomePresenterProtocol?
    var postList: [Post] = []
    
    lazy var searchBarController: UISearchController = {
        let searchBarController = UISearchController()
        let searchBar = searchBarController.searchBar
        searchBar.placeholder = "Busca un nombre"
        
        var textField = searchBar.value(forKey: "searchField") as? UITextField
        textField?.backgroundColor = .white
        textField?.font = UIFont(name: "HelveticaNeue-Regular", size: 14)
        searchBar.sizeToFit()
        
        return searchBarController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "DataTableViewCell", bundle: Bundle(for: DataTableViewCell.self)), forCellReuseIdentifier: DataTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate   = self
        
        setupViews()
        
        self.presenter?.loadInitialData()
    }
    
}

extension HomeViewController: HomeViewProtocol {
    
    func showData(dataList: [Post]) {
        cardViewContainer.isHidden = true
        tableView.isHidden = false
        
        self.postList = dataList
        self.tableView.reloadData()
    }
    
    
    func showErrorData(title: String, description: String, image: Images) {
        cardViewContainer.isHidden = false
        tableView.isHidden = true
        
        lblTitleEmpty.isHidden = false
        lblDescriptionEmpty.isHidden = false
        imgEmpty.isHidden = false
        
        imgEmpty.image = image.image
        lblTitleEmpty.text = title
        lblDescriptionEmpty.text = description
    }
    
    func showEmpty(title: String, description: String, image: Images) {
        cardViewContainer.isHidden = false
        tableView.isHidden = true
        
        lblTitleEmpty.isHidden = false
        lblDescriptionEmpty.isHidden = false
        imgEmpty.isHidden = false
        
        imgEmpty.image = image.image
        lblTitleEmpty.text = title
        lblDescriptionEmpty.text = description
    }
    
    func hideEmpty() {
        cardViewContainer.isHidden = false
        tableView.isHidden = true
        
        lblTitleEmpty.isHidden = true
        lblDescriptionEmpty.isHidden = true
        imgEmpty.isHidden = true
    }
    
    func showProgress(message: String) {
        cardViewContainer.isHidden = false
        tableView.isHidden = true
        
        idtLoading.isHidden = false
        lblLoading.isHidden = false
        
        idtLoading.startAnimating()
        lblLoading.text = message
    }
    
    func hideProgress() {
        cardViewContainer.isHidden = true
        
        idtLoading.isHidden = true
        lblLoading.isHidden = true
        
        idtLoading.stopAnimating()
    }
}
