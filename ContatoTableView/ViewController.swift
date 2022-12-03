//
//  ViewController.swift
//  ContatoTableView
//
//  Created by Jefferson Valverde on 01/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cadastro: [cadastrados] = [cadastrados(selfImage: UIImage(named: "thais") ?? UIImage(), name: "Carol", cel: "(19)91234-6153", mail: "carol@gmail.com"),
                                   cadastrados(selfImage: UIImage(named: "vivian") ?? UIImage(), name: "Vivian", cel: "(19)98272-6545", mail: "vivian@gmail.com"),
                                   cadastrados(selfImage: UIImage(named: "jefferson") ?? UIImage(), name: "Jefferson", cel: "(19)98267-4543", mail: "jefferson@gmail.com")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCell()
    }
    
    func configCell() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ContatoTableViewCell.nib(), forCellReuseIdentifier: ContatoTableViewCell.identifier)
}

    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cadastro.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContatoTableViewCell.identifier, for: indexPath) as? ContatoTableViewCell
        cell?.setupCell(cadastro[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O contato selecionado foi: \(cadastro[indexPath.row].name)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
}

