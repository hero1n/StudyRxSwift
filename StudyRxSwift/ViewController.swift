//
//  ViewController.swift
//  StudyRxSwift
//
//  Created by 노재원 on 2017. 3. 16..
//  Copyright © 2017년 heroin. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Observable.just("Hello, World")
            .map { value in
                return "\(value) - Cool"
            }
            .subscribe { event in
                switch event {
                case .next(let value):
                    print(value)
                case .completed:
                    print("complete")
                case .error(let error):
                    print(error)
                }
            }
            .addDisposableTo(disposeBag)
    }
}
