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
    var videos: [Video] = []

    struct Cell {
        static let videoCell = "videoCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Video List"
        configureTableView()
        videos = fetchData()

        // Do any additional setup after loading the view.
    }

    func configureTableView() {
        view.addSubview(tableView)
        setTableViwDelegate()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: Cell.videoCell)
        tableView.pin(to: view)
    }

    func setTableViwDelegate() {
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension VideoListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.videoCell) as! VideoCell
        cell.videoTitleLabel.text = videos[indexPath.row].title
        cell.videoImageView.image = videos[indexPath.row].image
        return cell
    }


}

extension VideoListViewController {
    func fetchData() -> [Video] {
        let image1 = Video(image: UIImage(named: "Artboard 1") , title: "75 of Discount")
        let image2 = Video(image: UIImage(named: "Artboard 2")  , title: "Black Friday Sales")
        let image3 = Video(image: UIImage(named: "Artboard 3")  , title: "Fall Collection")
        let image4 = Video(image: UIImage(named: "Artboard 4")  , title: "Holiday Sale")
        return [image1, image2, image3, image4]
    }
}
