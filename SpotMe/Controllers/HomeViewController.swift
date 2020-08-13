//
//  HomeViewController.swift
//  SpotMe
//
//  Created by Andrew Winton on 8/4/20.
//  Copyright © 2020 Riley Griffith. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    
    var messages: [Message] = [
        Message(sender: "Andrew", body: "Hi", groupName: "ANDREW's"),
        Message(sender: "Jalil", body: "What's good?", groupName: "JALIL's"),
        Message(sender: "Riley", body: "This App!", groupName: "RILEY's")
    ]
    
//    let sectionImages: [UIImage] = [#imageLiteral(resourceName: "groupProfile"), #imageLiteral(resourceName: "groupProfile"), picture3, picture4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.dataSource = self
        
        homeTableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)


        // Do any additional setup after loading the view.
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = message.body
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "GroupOne"
        } else if section == 1 {
            return "GroupTwo"
        } else {
            return "GroupThree"
        }
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        var myCustomView: UIImageView
//        let myImage: UIImage = UIImage(named: "groupProfile") ?? #imageLiteral(resourceName: "groupProfile")
//        myCustomView.image = myImage
//
//        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
//        header.addSubview(myCustomView)
//        return header
//    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//            return 80
//        }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let imageView = UIImageView()
//        imageView.image = #imageLiteral(resourceName: "groupProfile")
//        let headerView = UIView()
//        headerView.backgroundColor = .white
//        headerView.addSubview(imageView)
//
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
//        imageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
//        imageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
//
//        return headerView
//    }
}


