//
//  BlockScreenVC.swift
//  Startt
//
//  Created by Pavel Isakov on 04.06.2022.
//

import Foundation
import UIKit

class BlockScreenVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBlockScreenVCUI()
    }
    
    func setBlockScreenVCUI() {
        view.backgroundColor = .white
        //Unclock Image
        let unclokImg = "unclokImg"
        let unclockImage = UIImage(named: unclokImg)
        let unclockImageView = UIImageView(image: unclockImage!)
        view.addSubview(unclockImageView)
        unclockImageView.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
    }
}
