//
//  DetailViewController.swift
//  MaterialTransition
//
//  Created by Shota Nakagami on 2019/04/01.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit
import Hero

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hero.isEnabled = true
    }
    
    @IBAction func closeDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
