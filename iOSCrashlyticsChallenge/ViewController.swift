//
//  ViewController.swift
//  iOSCrashlyticsChallenge
//
//  Created by Cenker Soyak on 22.10.2023.
//

import UIKit
import SnapKit
import FirebaseCrashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }

    func createUI(){
        view.backgroundColor = .white
        
        let crashButton = UIButton()
        crashButton.setTitle("Crash", for: .normal)
        crashButton.configuration = .borderedProminent()
        view.addSubview(crashButton)
        crashButton.addTarget(self, action: #selector(crashButtonTapped), for: .touchUpInside)
        crashButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(50)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(30)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-30)
        }
    }
    @objc func crashButtonTapped(){
        let numbers = [0]
        let _ = numbers[1]
    }

}

