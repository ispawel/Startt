//
//  TermsVC.swift
//  Startt
//
//  Created by Pavel Isakov on 05.06.2022.
//

import Foundation
import UIKit

class TermsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Present and Dismiss"
        let present = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        present.setTitle("Present ViewController", for: .normal)
        present.setTitleColor(.red, for: .normal)
        present.center = view.center
        present.addTarget(self, action: #selector(clickPresent), for: .touchUpInside)
        view.addSubview(present)
    }
    
    @objc func clickPresent(){
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .overFullScreen
        present(secondVC, animated: true, completion: nil)
    }
    
}




class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let dismiss = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        dismiss.setTitle("Условия", for: .normal)
        dismiss.setTitleColor(.black, for: .normal)
        dismiss.center = view.center
        dismiss.addTarget(self, action: #selector(clickdismiss), for: .touchUpInside)
        view.addSubview(dismiss)
    }
    @objc func clickdismiss(){
        dismiss(animated: true, completion: nil)
    }
}
