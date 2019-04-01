//
//  ListViewController.swift
//  MaterialTransition
//
//  Created by Shota Nakagami on 2019/04/01.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit
import Hero

class ListViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let margin: CGFloat = 20.0
    let column: CGFloat = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: ListViewCell.className, bundle: nil), forCellWithReuseIdentifier: ListViewCell.className)
        collectionView.reloadData()
    }
}

extension ListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListViewCell.className, for: indexPath) as? ListViewCell else {
            fatalError()
        }
        return cell
    }
}

extension ListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = DetailViewController()
        present(vc, animated: true, completion: nil)
    }
}

extension ListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.width - (margin * (column + 1.0))) / column
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return margin
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return margin
    }
}
