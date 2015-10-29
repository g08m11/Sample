## 通信状況確認サンプルコード

アプリによっては通信状況が悪いと落ちてしまいます。
その際、Reachabilityという

### iOSの通信状態が確認できるライブラリ

を使って、

### iOSの通信状態を確認する

必要があります。

こちらのReachabilityですが、
Objective-C同様に
Swiftでも使えます。
これからSwiftで開発をされる方の参考になればと思います。

###１・「Isuru-Nanayakkara/Swift-Reachability」からソースを落としてくる
git cloneやzipファイルで落としてきます。


![スクリーンショット 2014-12-06 17.25.51.png](https://qiita-image-store.s3.amazonaws.com/0/15812/187cf4df-f9c3-6b0e-7ae0-a31f46504cc6.png "スクリーンショット 2014-12-06 17.25.51.png")


<br>

###２・プロジェクトを作成する
今回は「Sample」というプロジェクト名で作成していきます。


![スクリーンショット 2014-12-06 17.21.00.png](https://qiita-image-store.s3.amazonaws.com/0/15812/9a36b8b8-2828-dc83-df53-a50802961926.png "スクリーンショット 2014-12-06 17.21.00.png")



![スクリーンショット 2014-12-06 17.21.36.png](https://qiita-image-store.s3.amazonaws.com/0/15812/e5c7eb6d-9bfd-084a-bda5-eace3ed84546.png "スクリーンショット 2014-12-06 17.21.36.png")



![スクリーンショット 2014-12-06 17.21.45.png](https://qiita-image-store.s3.amazonaws.com/0/15812/7b834edf-2758-2ce6-2c14-3f0c1a309842.png "スクリーンショット 2014-12-06 17.21.45.png")


###３・「１」のソースから「Reachability.swift」だけを「２」のプロジェクトにマージする


![スクリーンショット 2014-12-06 17.28.08.png](https://qiita-image-store.s3.amazonaws.com/0/15812/de9c56b8-fab0-a324-9f2f-df7220519363.png "スクリーンショット 2014-12-06 17.28.08.png")



![スクリーンショット 2014-12-06 17.28.20.png](https://qiita-image-store.s3.amazonaws.com/0/15812/5fbdc206-b948-1f10-f3b8-04327ac1425c.png "スクリーンショット 2014-12-06 17.28.20.png")


![スクリーンショット 2014-12-06 17.48.26.png](https://qiita-image-store.s3.amazonaws.com/0/15812/4d96a251-a05f-8933-48bb-86feaf80b745.png "スクリーンショット 2014-12-06 17.48.26.png")



###４・以下のようなコードを実装する

```Swift
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


```

###５・コードが正常に稼働しているか確認する

#### Wifiが入っている状態
こちらは正常な場合は何も表示されずにdebugで
「正常な電波状況です」と表示されます。

![sample_1.gif](https://qiita-image-store.s3.amazonaws.com/0/15812/a15d4378-555e-e21c-431a-c393ffd9b7fd.gif "sample_1.gif")


![スクリーンショット 2014-12-06 17.40.13.png](https://qiita-image-store.s3.amazonaws.com/0/15812/553f255d-a1b4-e70e-c21f-1bc35d05e93e.png "スクリーンショット 2014-12-06 17.40.13.png")



#### wifiが入っていない場合
こちらは起動時に通信エラーである旨のpopアップが表示されます。


![スクリーンショット 2014-12-06 17.44.13.png](https://qiita-image-store.s3.amazonaws.com/0/15812/7cee036d-ca66-9889-0a19-e8bba2c7e9f6.png "スクリーンショット 2014-12-06 17.44.13.png")


![sample_2.gif](https://qiita-image-store.s3.amazonaws.com/0/15812/26951fb7-5792-9461-feae-660ea8be985e.gif "sample_2.gif")
