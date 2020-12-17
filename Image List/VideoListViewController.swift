//
//  VideoListViewController.swift
//  Image List
//
//  Created by Johnson Osei Yeboah on 17/12/2020.
//  Copyright © 2020 Johnson Osei Yeboah. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Video List"
        configureTableView()

        // Do any additional setup after loading the view.
    }

    func configureTableView() {
        view.addSubview(tableView)
        setTableViwDelegate()
        tableView.rowHeight = 100
    }

    func setTableViwDelegate() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.pin(to: view)
    }

}

extension VideoListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }


}
