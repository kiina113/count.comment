//
//  ViewController.swift
//  count.comment
//
//  Created by KINARI NISHIYAMA on 2015/03/04.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//


//apple社が用意してくれた、ユーザーインターフェイスを使うために必要
import UIKit
//storyboardと繋がっている、viewcontrollerはUIViewControllerというクラスのものである.
//UIViewControllerはiosアプリの画面と紐付いて、画面遷移を管理するもの　（中心となるクラス）
class ViewController: UIViewController {
    //インターフェイスビルダーに置いたオブジェクトに、変数名を持たせ、プログラム側からコントロールできるようにする（つなげる）
    //UILabelは文字を表示するため必要な機能を提供してくれるクラス
    //UIViewControllerという親クラスの中で使うものだからここに書く
    @IBOutlet var label : UILabel!
    //numberという名の変数を使うと宣言
    var number = 0

    
    
    override func viewDidLoad() {
        //override:親クラスから引き継いだメソッドを、ここのクラスように上書きするということ。都合のいい時に親クラスのメソッドを引っ張ってきて、それ以外は自分のクラスのメソッドを上書きする//
        //viewDidLoad: 画面を表示する準備段階の処理を書くところ。
        super.viewDidLoad()
        //↑はまず親クラスのメソッドを使うよ、という意味。
        //準備段階でのメソッドを書くところなため、完全に上書きしてしまうと、親クラスの初期設定ができなくなってしまうため。
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func plus(){
        //ユーザー側コントロールできるようにする
        //func=functionの略。動き、、？
        //plusボタンを押した時のアクションをここに書く
        number = number + 1
        //親クラスで宣言した変数numberに１足されるよ
        label.text = "\(number)"
        //オブジェクト名.プロパティ=値　
        //label.textは、labelという名のUILabel（クラス）はtextというデータを持ってるという意味
        //値：™\()™とすることで、ただの文字ではなく、変数にできる
        
        //touch up insideでつなぐ＝ボタンを押した時の処理
    }

    @IBAction func minus () {
        number = number - 1
        label.text = "\(number)"
    }
    
    @IBAction func reset(){
        number = 0
        label.text = "\(number)"
    }
    override func didReceiveMemoryWarning() {
        //メモリが足りないよというときに使うところ
        //必要なくなったコードなどを書く=クリーンアップ？
        super.didReceiveMemoryWarning()
        //didReceiveMemoryWarningという親クラスをまず呼ぶ。 $ 
        
        // Dispose of any resources that can be recreated.
    }


}

