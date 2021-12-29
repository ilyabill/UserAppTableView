//
//  SupportManager.swift
//  UserAppTableView
//
//  Created by ILYA BILARUS on 29.12.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aarson", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"]
    
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth",
                    "Jankin", "Butler", "Black",
                    "Robertson", "Murphy", "Williams"]
    
    let emails = ["qqqq@mail.ru", "www@mail.ru", "eee@mail.ru", "rrr@mail.ru",
                  "ttt@mail.ru", "yyyy@mail.ru", "uuu@mail.ru",
                  "iiii@mail.ru", "vvv@mail.ru", "lll@mail.ru"]
    
    let phones = ["452452452345", "6783467347", "1233456", "000000565",
                  "23452345666", "666666", "777777",
                  "090909", "123321", "01"]
    
    private init() {}
}
