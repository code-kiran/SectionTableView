//
//  ViewController.swift
//  SectionTableViewDogs
//
//  Created by kiran on 8/17/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

struct headerContent {
    var headerName : String!
    var headerImage : UIImage!
}
struct cell {
    var cell: Int
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//   var  names = ["dfa","dfa","dfa","dfa","dfa","dfa","dfa","dfa","dfa","dfa"]

    var headerArray = [headerContent]()
    var cellArray = [cell]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        headerArray = [headerContent.init(headerName: "Title For Header1 ", headerImage: #imageLiteral(resourceName: "coffee")),headerContent.init( headerName: "Title For Header2", headerImage: #imageLiteral(resourceName: "momo")), headerContent.init( headerName: "Title For Header3", headerImage: #imageLiteral(resourceName: "high")), headerContent.init( headerName: "Title For Header3", headerImage: #imageLiteral(resourceName: "high"))]
        
       cellArray = [cell(cell: 1), cell(cell: 2), cell(cell: 3), cell(cell: 4)]
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return headerArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        
        if indexPath.row == 1{
            let cell = Bundle.main.loadNibNamed("TableCellVC1", owner: self, options: nil)?.first as! TableCellVC1
            cell.nameLabel.text = "Alexzender"
            return cell
    }
        else {
            let cell = Bundle.main.loadNibNamed("TableCellVC1", owner: self, options: nil)?.first as! TableCellVC1
            cell.nameLabel.text = "Alexzender"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 66
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        headerView.headerImage.image = headerArray[section].headerImage
        headerView.headerTitle.text = headerArray[section].headerName
        
        return headerView
    }



}

