//
//  LoadingVC.swift
//  Startt
//
//  Created by Pavel Isakov on 04.06.2022.
//

import Foundation
import UIKit
import SnapKit

class LoadingVC: UIViewController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLoadingUI()
    }
    
    func setLoadingUI() {
        
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
        
        //Status Logo 2 centr
        let status2 = "status2"
        let status2image = UIImage(named: status2)
        let status2imageView = UIImageView(image: status2image!)
        view.addSubview(status2imageView)
        
        status2imageView.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.view)
            make.top.equalTo(unclockImageView).offset(140)
        }
        
        //Status Logo 1 left
        let status1 = "status1"
        let status1image = UIImage(named: status1)
        let status1imageView = UIImageView(image: status1image!)
        view.addSubview(status1imageView)
        
        status1imageView.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(status2imageView).offset(-10)
            make.top.equalTo(unclockImageView).offset(140)
        }
        
        //Status Logo 3 right
        let status3 = "status3"
        let status3image = UIImage(named: status3)
        let status3imageView = UIImageView(image: status3image!)
        view.addSubview(status3imageView)
        
        status3imageView.snp.makeConstraints { (make) -> Void in
            make.right.equalTo(status2imageView).offset(10)
            make.top.equalTo(unclockImageView).offset(140)
        }
                
        
    }
    
    
    
}
