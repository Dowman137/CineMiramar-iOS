//
//  ViewController.swift
//  CineMiramar
//
//  Created by admin on 21/06/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let products = [
        ("Producto 1", "Descripción del producto 1", "$10", UIImage(named: "image1")),
        ("Producto 2", "Descripción del producto 2", "$20", UIImage(named: "image2")),
        ("Producto 3", "Descripción del producto 3", "$30", UIImage(named: "image3"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        let nib = UINib(nibName: "MainProductsCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ProductCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! MainProductsCollectionViewCell
        let (_, description, price, image) = products[indexPath.row]
            cell.productDescriptionLabel.text = description
            cell.productPriceLabel.text = price
            cell.productImageView.image = image
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // Manejar la selección de la celda si es necesario
        }


}

