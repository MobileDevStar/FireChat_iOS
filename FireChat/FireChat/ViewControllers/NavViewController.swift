//
//  NavViewController.swift
//  FireChat
//
//  Created by ITDevStar on 4/21/19.
//  Copyright © 2019 ITDevStar. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class NavViewController: UINavigationController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return 0
    }
    
    
    //MARK: ViewController lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.customization()
    }
}
