//
//  ViewController.swift
//  labBtn
//
//  Created by Andrew Park on 2017. 5. 15..
//  Copyright © 2017년 Andrew Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //상수영역
    let value = 0
    
    //레이블 영역 변수 뒤에 ? 또는 ! 끝나는 Optional 자료형
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var loadDone: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    //버튼 클릭시
    @IBAction func tapBtn(_ sender: Any) {
        //딕셔너리 테스트
        let str:[String:Int] = ["a":1, "b":2, "c":3]
        for(key,value) in str{
            print("strDict[\(key)=\(value)]")
        }
        myLabel.text = "test";
    }
    @IBAction func textViewController(_ sender: Any) {
        if(textView.alpha == 0){
            textView.alpha = 100
        }else{
            textView.alpha = 0
        }
    }
    
    func functionTest() -> (Int, String){
        let tuple = (100, "서울")
        var (po, ad) = tuple
        print(tuple.0)
        print(po)
        print(ad)
        
        var null:Int? = nil;
        null = 10;
        po += null!
        if let temp = null{
            print(temp)
        }
        guard let temp2 = null else{
            return (100, "서울");
        }
        
        return (po, ad);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var total:Int = 0;
        for count in 0 ... 5 {
            total += count
        }
        
        var array = ["a","b","c"]
        var repeatingArray = Array(repeating: "A",count : 3);
        var noneArray = [String]();
        noneArray = array;
        
        
        loadDone.text = "로딩완료\(total)\(noneArray[1])\(repeatingArray[2])";
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

