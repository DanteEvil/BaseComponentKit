//
//  GBaseViewController.swift
//  BaseComponentKit
//
//  Created by Truong Le on 9/20/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

open class GBaseViewController: UIViewController {

    public var navigationBarColor: UIColor = UIColor.white
    public var navigationBarShadowColor: UIColor = UIColor.black
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(navigationBarColor.as1ptImage(), for: .default)
        navigationController?.navigationBar.shadowImage = navigationBarShadowColor.as1ptImage()
    }
    

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(didEnterBackground), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willEnterForceground), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.endEditing(true)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc open func didEnterBackground() {
        // Handle background state
    }
    
    @objc open func willEnterForceground() {
        // Handle forceground state
    }
}
