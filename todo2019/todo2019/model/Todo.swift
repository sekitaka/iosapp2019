//
// Created by Takashi Seki on 2019/12/10.
// Copyright (c) 2019 Takashi Seki. All rights reserved.
//

import Foundation
import RealmSwift

class Todo : Object{
    @objc dynamic var uuid = ""
    @objc dynamic var title = ""
    @objc dynamic var detail = ""
    @objc dynamic var isActive = true
    @objc dynamic var createdAt = Date(timeIntervalSince1970: 0)

    override class func primaryKey() -> String? {
        return "uuid"
    }
}
