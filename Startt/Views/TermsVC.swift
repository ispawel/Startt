//
//  TermsVC.swift
//  Startt
//
//  Created by Pavel Isakov on 05.06.2022.
//

import Foundation
import UIKit
import SnapKit



class TermsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Present and Dismiss"
        
        clickModalToTermsVC()
        setBtnShowTerms()
        
    }
    
    
    //Show Terms button
    func setBtnShowTerms() {
        let present = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        present.setTitle("Показать условия", for: .normal)
        present.setTitleColor(.black, for: .normal)
        present.backgroundColor = UIColor.gray
        present.layer.cornerRadius = 10
        present.center = view.center
        present.addTarget(self, action: #selector(clickModalToTermsVC), for: .touchUpInside)
        view.addSubview(present)
    }
    
    //Modal Transitioin to TermsVC
    @objc func clickModalToTermsVC(){
        let termsVCmodal = termsVCmodal()
        termsVCmodal.modalPresentationStyle = .formSheet
        present(termsVCmodal, animated: true, completion: nil)
    }
    
    
}





class termsVCmodal: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setNavBar()
        setLicensTerms()
        
    }
    
    //Setup navigation bar
    func setNavBar() {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 44))
        view.addSubview(navBar)

        let navItem = UINavigationItem(title: "Условия")
        let acceptItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(acceptButton))
        acceptItem.title = "Принять"
        navItem.rightBarButtonItem = acceptItem

        navBar.setItems([navItem], animated: false)

    }
    
    //Setup Terms Text
    func setLicensTerms() {
        
        let licensTermsText = "Пользовательское соглашение - это договор между пользователем и владельцем сайта об условиях его использования.\n\nПользовательское соглашение может включать условия оферты на коммерческое использование, но иногда лучше их разделять.\n\nНе всякий пользователь готов разместить заказ на стадии ознакомления с сайтом, но вы уже начали собирать о нем данные.\n\nЕсли на сайте разрешена регистрация или есть форма обратной связи либо кнопка подписки на новости, необходимо обеспечить полeчение согласия на обработку персональных данных пользователя в связи с заключением договора.\n\nВ таком случае не требуется регистрация в Роскомнадзоре в качестве оператора персональных данных. Пользовательское соглашение играет роль такого договора.\n\nНиже приведен тест пользовательского соглашения для сайта в ознакомительных целях и даны подробные комментарии к его условиям."
        
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.text = licensTermsText
        
        view.addSubview(label)
        label.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).inset(20)
            make.right.equalTo(view).inset(15)
            make.top.equalTo(view).inset(80)
            //make.centerY.equalTo(self.view)
            //make.centerX.equalTo(self.view)
        }
        
    }
    
    @objc func acceptButton(){
        dismiss(animated: true, completion: nil)
    }
    
}
