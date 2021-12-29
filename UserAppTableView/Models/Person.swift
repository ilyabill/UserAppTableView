//
//  Person.swift
//  UserAppTableView
//
//  Created by ILYA BILARUS on 29.12.2021.
//

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    
    static func getPersons() -> [Person] {
        
        let manager = DataManager.shared
        
        var names = manager.names
        var surnames = manager.surnames
        var phones = manager.phones
        var emails = manager.emails
        
        var persons: [Person] = []
        
        for _ in names {
            
            guard let name = names.randomElement() else { return persons }
            guard let surname = surnames.randomElement() else { return persons }
            guard let phone = phones.randomElement() else { return persons }
            guard let email = emails.randomElement() else { return persons }
            
            if let index = names.firstIndex(of: name) { names.remove(at: index) }
            if let index = names.firstIndex(of: surname) { surnames.remove(at: index) }
            if let index = names.firstIndex(of: phone) { phones.remove(at: index) }
            if let index = names.firstIndex(of: email) { emails.remove(at: index) }
            
            let newPerson = Person(name: name, surname: surname, email: email, phone: phone)
            
            persons.append(newPerson)
            
        }
        
        return persons
    }
    
}

