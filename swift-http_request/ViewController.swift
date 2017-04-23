//
//  ViewController.swift
//  swift-http_request
//
//  Created by 土屋貴大 on 2017/04/23.
//  Copyright © 2017年 ttaka66. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("http://localhost:3000/hello").responseJSON { response in
            //            print(response.request)  // original URL request
            //            print(response.response) // HTTP URL response
            //            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

