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

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hero.isEnabled = true
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(didPan))
        view.addGestureRecognizer(panGesture)
    }
    
    @IBAction func closeDidTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didPan(panGestureRecognizer: UIPanGestureRecognizer) {
        let translation = panGestureRecognizer.translation(in: nil)
        let progress = abs(translation.y) / 300
        switch panGestureRecognizer.state {
        case .began:
            hero.dismissViewController()
        case .changed:
            Hero.shared.update(progress)
        default:
            if progress > 0.7 {
                Hero.shared.finish()
            } else {
                Hero.shared.cancel()
            }
        }
    }
}
