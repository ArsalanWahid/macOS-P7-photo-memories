//
//  ViewController.swift
//  PhotoMemories
//
//  Created by Arsalan Wahid Asghar on 27/01/2021.
//

import Cocoa

class ViewController: NSViewController, NSCollectionViewDataSource, NSCollectionViewDelegate {

    @IBOutlet weak var collectionView: NSCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier("Photo"), for: indexPath)
        guard let pictureItem = item as? Photo else { return item}
        pictureItem.view.wantsLayer = true
        pictureItem.view.layer?.backgroundColor = NSColor.red.cgColor
        return pictureItem
        
    }
    
}

