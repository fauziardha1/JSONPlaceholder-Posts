//
//  ViewController.swift
//  JSONPlaceholder-Posts
//
//  Created by FauziArda on 13/03/23.
//

import UIKit

class PostsController: UIViewController {
    var postsData: [String] = []
    lazy var cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBlue
        
        layout()
    }
    
    func layout() {
        cv.register(PostCell.self, forCellWithReuseIdentifier: PostCell.identifier)
        cv.frame = view.bounds
        
        
    }


}

extension PostsController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.postsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: PostCell.identifier, for: indexPath) as! PostCell
        cell.title = self.postsData[indexPath.row]
        
        return cell
    }
    
    
    
}

