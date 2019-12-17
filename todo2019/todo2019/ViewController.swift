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
//        hoge()
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

