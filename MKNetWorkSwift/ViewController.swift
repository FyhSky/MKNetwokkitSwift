//
//  ViewController.swift
//  MKNetWorkSwift
//
//  Created by FengYinghao on 12/5/15.
//  Copyright © 2015 FengYinghao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet  var responseText:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let request = MKNetworkRequest(URLString: "http://blog.csdn.net/skynullcode", params: nil, bodyData: nil, httpMethod: "GET");
        
        request .addCompletionHandler { (response:MKNetworkRequest!) -> Void in
           print(response)
        
            self.responseText.backgroundColor = UIColor.grayColor();
        
            self.responseText.textColor = UIColor.greenColor();
           
            self.responseText.numberOfLines = 0;
            self.responseText.text = response.responseAsString
        }
        
        let engine = MKNetworkHost()
        engine .startRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

