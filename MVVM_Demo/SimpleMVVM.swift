//
//  SimpleMVVM.swift
//  MVVM_Demo
//
//  Created by as on 4/28/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class SimpleMVVM: UIViewController {
    @IBOutlet weak var tableView : UITableView!
    var viewModel = SimpleListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        title = "simple MVVM"
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    

}

extension SimpleMVVM:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SimpleMVVMCell
        
        cell.data = viewModel.getModel(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 98
    }
    
    
}
