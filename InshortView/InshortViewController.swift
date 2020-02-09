//
//  ViewController.swift
//  InshortView
//
//  Created by Mohammmad Tahir on 04/09/19.
//  Copyright © 2019 Mohammad Tahir. All rights reserved.
//

import UIKit

class InshortViewController: UIViewController {
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.register(UINib.init(nibName: "NewsCardCollectionCell", bundle: nil), forCellWithReuseIdentifier: "NewsCardCollectionCell")
    }
}
// MARK: - UICollectionViewDataSource -
extension InshortViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCardCollectionCell", for: indexPath)
        if let newsCard = cell as? NewsCardCollectionCell {
            return newsCard
        }
        return cell
    }
}



