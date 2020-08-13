////
////  NotificationsViewController.swift
////  SpotMe
////
////  Created by Andrew Winton on 8/12/20.
////  Copyright © 2020 Riley Griffith. All rights reserved.
////
//
//import UIKit
//
//class NotificationsViewController: UIViewController {
//    @IBOutlet weak var groupTableView: UITableView!
//
//        var groupNotifications: [GroupNotifications] = [
//            GroupNotifications(notification: "Hi", timeStamp: "ANDREW's"),
//            GroupNotifications(notification: "What's good?", timeStamp: "JALIL's"),
//            GroupNotifications(notification: "This App!", timeStamp: "RILEY's")
//        ]
//
//    //    let sectionImages: [UIImage] = [#imageLiteral(resourceName: "groupProfile"), #imageLiteral(resourceName: "groupProfile"), picture3, picture4]
//
//        override func viewDidLoad() {
//            super.viewDidLoad()
//
//            groupTableView.dataSource = self
//
//            groupTableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
//
//
//            // Do any additional setup after loading the view.
//        }
//    }
//
//    extension NotificationsViewController: UITableViewDataSource {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return groupNotifications.count
//        }
//
//        func numberOfSections(in tableView: UITableView) -> Int {
//            return 1
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let message = groupNotifications[indexPath.row]
//            
//            let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as!GroupNotificationsCell
//            cell.timeStamp.text = groupNotifications.notification
//            return cell
//        }
//    }
//
//    extension NotificationsViewController: UITableViewDelegate {
//
//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            if section == 0 {
//                return "GroupOne"
//            } else if section == 1 {
//                return "GroupTwo"
//            } else {
//                return "GroupThree"
//            }
//        }
//}
