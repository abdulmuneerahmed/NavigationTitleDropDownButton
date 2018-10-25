//
//  ViewController.swift
//  NavigationTitleDropDown
//
//  Created by Yudiz on 25/10/18.
//  Copyright © 2018 Yudiz. All rights reserved.
//

import UIKit

/// ViewController
class ViewController: UIViewController {

    /// Variable Declaration(s)
    var navigationButtonView: NavigationTitleDropDownButton = NavigationTitleDropDownButton()
    
    /// View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
}

// MARK: - UI Related Method(s)
extension ViewController {
    
    func prepareUI() {
        /// Preparing Navigation Bar
        prepareNavigationBar()
    }
    
    func prepareNavigationBar() {
        navigationButtonView.addTarget(self, action: #selector(handleNavigationTitleSelection(_:)), for: .touchUpInside)
        navigationButtonView.configure("Kevin Shah", subTitle: "iOS Developer")
        navigationItem.titleView = navigationButtonView
    }
}

// MARK: - UIButton Action(s)
extension ViewController {
    
    @objc func handleNavigationTitleSelection(_ sender: UIButton) {
        print("Navigation Title Bar Pressed")
        let alertController = UIAlertController(title: "Navigation Title", message: "Navigation Title Bar Pressed", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
    }
}
