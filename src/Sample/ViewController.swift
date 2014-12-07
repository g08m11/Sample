//
//  ViewController.swift
//  Sample
//
//  Created by g08m11 on 2014/12/06.
//  Copyright (c) 2014年 Bloc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    reachabilityCheck ()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func reachabilityCheck () {
    if Reachability.isConnectedToNetwork() {
      println("正常な電波状況です")
    } else {
      let alert = UIAlertView()
      alert.title = "通信エラー"
      alert.message = "通信状況がよくありません。電波環境を確認後、再度お試しください。"
      alert.addButtonWithTitle("OK")
      alert.show()
      
    }
    
    
  }


}

