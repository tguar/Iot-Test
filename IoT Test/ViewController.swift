//
//  ViewController.swift
//  IoT Test
//
//  Created by Thomas Guarnery on 9/29/16.
//  Copyright © 2016 Tom Guarnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
////        getRequest()
//        print("this is the getRequest responses" + getRequest())
//        if (getRequest() == "msg"){
//            print("TRUEEEEEE")
//            let btn = UIButton(type: UIButtonType.system) as UIButton
//            //OR
////            let btn = UIButton(type: UIButtonType.custom) as UIButton
//            btn.backgroundColor = UIColor.blue
//            btn.setTitle("Button", for: UIControlState.normal)
////            btn.frame = CGRectMake(100, 100, 200, 100)
//            btn.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
////            btn.addTarget(self, action: "clickMe:", for: UIControlEvents.touchUpInside)
//            self.view.addSubview(btn)
//        }
    override func viewDidLoad() {
        let webV:UIWebView = UIWebView(frame: CGRect(x: 0, y: 20, width: UIScreen.main.bounds.width, height: 300))
        webV.loadRequest(NSURLRequest(url: NSURL(string: "http://tguar.github.io/test.html") as! URL) as URLRequest)
//        webV.delegate = self;
        self.view.addSubview(webV)}
    }

        // Do any additional setup after loading the view, typically from a nib.

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    func getRequest() -> String
    {
        URLSession.shared.dataTask(with: NSURL(string: "http://demo5876216.mockable.io/test")! as URL, completionHandler: { (data, response, error) -> Void in
            // Check if data was received successfully
            if error == nil && data != nil {
                do {
                    // Convert NSData to Dictionary where keys are of type String, and values are of any type
                    let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:AnyObject]
                    // Access specific key with value of type String
        
                    let msg = json["msg"] as! String
//                    let a = msg[0] as! [String:Any]
                    print("---------=====---------")
                    print(msg)
                    print("---------=====---------")
                } catch {
                    // Something went wrong
                }
            }
        }).resume()
        let a = String(describing: msg.self)
        print("---------=====---------")
        print("---------=====---------")
        print("---------=====---------")
        print(a)
        return a
    }



