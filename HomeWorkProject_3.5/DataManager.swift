//
//  DataManager.swift
//  HomeWorkProject_3.5
//
//  Created by Максим on 22.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var count: Int {
        min(firstNames.count, lastNames.count, phoneNumbers.count, eMails.count)
    }
    
    let firstNames =
        ["Maxim",
         "Roman",
         "Konstantin",
         "Andrey",
         "Sergey",
         "Tim",
         "Bruce",
         "Clark",
         "Bob",
         "Efim"]
    
    let lastNames =
        ["Ivanov",
         "Sidorov",
         "Petrov",
         "Michaylov",
         "Litvinov",
         "Wayne",
         "Kent",
         "Smith",
         "Douglas",
         "Cook"]
    
    let phoneNumbers =
        ["+7(432)547593",
         "+7(432)843689",
         "+7(432)475345",
         "+7(432)764325",
         "+7(432)089732",
         "+7(432)847534",
         "+7(432)459070",
         "+7(432)874985",
         "+7(432)384658",
         "+7(432)472384"]

    let eMails =
        ["faulureimmoxou@yopmail.com",
         "pigronnulenni@yopmail.com",
         "geuyilleuffegre@yopmail.com",
         "bollouyaprennau@yopmail.com",
         "kennojeitreifra@yopmail.com",
         "kennojeitreifra@yopmail.com",
         "cuhesuyaullo@yopmail.com",
         "tabrucraquossa@yopmail.com",
         "gabrexeuppubre@yopmail.com",
         "quissousenopra@yopmail.com"]
    
    private init() {}
}
