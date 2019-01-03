//
//  welcomScreen.swift
//  CoreMotion
//
//  Created by Asmaa Nour on 1/3/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import UIKit

class welcomScreen: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //      number of cells
        return imageArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //     return  configured cell with image and nams
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ParallaxCell", for: indexPath) as? ParallaxCell
            else{
                return UITableViewCell()}
        cell.configureCell(withImage: imageArray[indexPath.row], andDescription: nameArray[indexPath.row])
        return cell
}
}
