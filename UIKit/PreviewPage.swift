//
//  PreviewPage.swift
//  UI-Kit
//
//  Created by wtildestar on 31/10/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ArtCover"

    let imageNameArray = ["Андрей Губин - Облака",
                          "Татьяна Овсиенко - Капитан",
                          "Bad Boys Blue - I Wanna Hear Your Heartbeat",
                          "Rednex - Cotton Eye Joe",
                          "Joe Dassin - Takatakata",
                          "Sandra - Secret Land",
                          "Цветы - Мы желаем счастья вам"]

class PreviewPage: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
    
        cell.coverImageView.image = UIImage(named: imageNameArray[indexPath.row]) // Задаем изображение из списка оутлету ImageView который хранится в отдельной ячейке ArtCover
    
        return cell
    }


}
