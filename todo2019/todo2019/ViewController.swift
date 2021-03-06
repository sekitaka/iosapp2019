//
//  ViewController.swift
//  todo2019
//
//  Created by Takashi Seki on 2019/12/10.
//  Copyright © 2019 Takashi Seki. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad")
        navigationController?.navigationBar.setBackgroundImage(#imageLiteral(resourceName: "repeatable"), for: .default)
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowRadius = 4.0
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
//        hoge()
    }
    
    @IBAction func onAlertTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Alert", bundle: .main)

        let alertVC = storyboard.instantiateViewController(withIdentifier: "myalert")

        alertVC.modalPresentationStyle = .overCurrentContext
        alertVC.modalTransitionStyle = .crossDissolve // 元が消える
//        alertVC.providesPresentationContextTransitionStyle = true
//        alertVC.definesPresentationContext = true
        
        present(alertVC, animated: true)
    }
    func hoge() {
        if let view = Bundle(for: type(of: self)).loadNibNamed("CustomView", owner: self, options: nil)?.first as? UIView {
            self.view.addSubview(view)
        }
    }

    @IBAction func addTodo(_ sender: UIButton) {
        print("add todo clicked")
        let realm = try! Realm()
        try! realm.write() {
            let now = Date()
            let nowTimeInterval = now.timeIntervalSince1970
            let todo = realm.create(Todo.self, value: [
                "uuid": "\(nowTimeInterval)"
            ])
            todo.title = "Hoge \(nowTimeInterval)"
            todo.detail = "hogehoge body \(nowTimeInterval)"
            todo.createdAt = now
            print("added todo \(nowTimeInterval)")
        }
    }

    @IBAction func showTodoCount(_ sender: Any) {
        print("show todo count clicked")
        let realm = try! Realm()
        let todos = realm.objects(Todo.self)
        print("todo count is \(todos.count)")
    }
}

