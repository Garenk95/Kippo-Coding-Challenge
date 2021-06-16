//
//  TrendingViewController.swift
//  Kippo-Coding-Challenge
//
//  Created by Garen Kantarci on 6/16/21.
//

import UIKit

class TrendingViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(TrendingGameCollectionViewCell.nib(), forCellWithReuseIdentifier: TrendingGameCollectionViewCell.identifier)

        collectionView.delegate = self
        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 180, height: 250)
        collectionView.collectionViewLayout = layout
    }

}

extension TrendingViewController: UICollectionViewDelegate {
    
}

extension TrendingViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TrendingGameCollectionViewCell.identifier, for: indexPath) as! TrendingGameCollectionViewCell
        
        cell.configure(image: UIImage(named: "FallGuysTestImg")!, gameTitle: "Fall Guys", gameGenre: "Indie")
        
        return cell
    }
}

extension TrendingViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 180, height: 250)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18)

    }
}


