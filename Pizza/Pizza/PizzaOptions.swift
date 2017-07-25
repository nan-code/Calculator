//
//  Toppings.swift
//  Pizza
//
//  Created by Matthew Nanney on 7/25/17.
//  Copyright © 2017 NanCode. All rights reserved.
//

import Foundation

enum Size: Int {
    case junior
    case small
    case medium
    case large
    case extraLarge

    static let allValues = [junior, small, medium, large, extraLarge]

    var description: String {
        let descriptions = ["Junior", "Small", "Medium", "Large", "Extra Large"]
        return descriptions[self.rawValue]
    }
}

enum Crust: Int {
    case round
    case deepDish
    case thinCrust
    case glutenFree

    static let allValues = [round, deepDish, thinCrust, glutenFree]

    var description: String {
        let descriptions = ["Round", "Deep Dish", "Thin Crust", "Gluten Free"]
        return descriptions[self.rawValue]
    }
}

enum CookOptions: Int {
    case lightlyDone
    case wellDone

    static let allValues = [lightlyDone, wellDone]

    var description: String {
        let descriptions = ["Lightly Done", "Well Done"]
        return descriptions[self.rawValue]
    }
}

enum Sauces: Int {
    case tomatoSauce
    case barbecueSauce
    case spicyTomatoSauce
    case buffaloSauce

    static let allValues = [tomatoSauce, barbecueSauce, spicyTomatoSauce, buffaloSauce]

    var description: String {
        let descriptions = ["Tomato Sauce", "Barbecue Sauce", "Spicy Tomato Sauce", "Buffalo Sauce"]
        return descriptions[self.rawValue]
    }
}

enum SauceOptions: Int {
    case noSauce
    case lightSauce
    case regularSauce
    case extraSauce

    static let allValues = [noSauce, lightSauce, regularSauce, extraSauce]

    var description: String {
        let descriptions = ["No Sauce", "Light Sauce", "Regular Sauce", "Extra Sauce"]
        return descriptions[self.rawValue]
    }
}

enum Cheese: Int {
    case mozzarella
    case cheddar
    case threeCheese

    static let allValues = [mozzarella, cheddar, threeCheese]

    var description: String {
        let descriptions = ["Mozzarella", "Cheddar", "Three Cheese"]
        return descriptions[self.rawValue]
    }
}

enum CheeseOptions: Int {
    case noCheese
    case lightCheese
    case regularCheese
    case extraCheese

    static let allValues = [noCheese, lightCheese, regularCheese, extraCheese]

    var description: String {
        let descriptions = ["No Cheese", "Light Cheese", "Regular Cheese", "Extra Cheese"]
        return descriptions[self.rawValue]
    }
}

enum Toppings: Int {
    case pepperoni
    case ham
    case bacon
    case italianSausage
    case grilledChicken
    case beef
    case steak
    case meatballs

    case pineapple
    case tomato
    case mushroom
    case redOnion
    case blackOlive
    case greenOlive
    case mildPepper
    case greenPepper
    case jalapeno
    case anchovy
    case srirachaSauce

    case fetaCheese
    case cheddarCheese
    case parmesanCheese

    static let allValues = [pepperoni, ham, bacon, italianSausage,
                            grilledChicken, beef, steak, meatballs,
                            pineapple, tomato, mushroom, redOnion,
                            blackOlive, greenOlive, mildPepper,
                            greenPepper, jalapeno, anchovy, srirachaSauce,
                            fetaCheese, cheddarCheese, parmesanCheese]

    var description: String {
        let descriptions = ["Pepperoni", "Ham", "Bacon", "Italian Sausage",
                            "Grilled Chicken", "Beef", "Steak", "Meatballs",
                            "Pineapple", "Tomato", "Mushroom", "Red Onion",
                            "Black Olive", "Green Olive", "Mild Pepper",
                            "Green Pepper", "Jalapeno", "Anchovy", "Sriracha Sauce",
                            "Feta Cheese", "Cheddar Cheese", "Parmesan Cheese"]
        return descriptions[self.rawValue]
    }
}

enum FlavoredCrust: Int {
    case original
    case italianHerb
    case butter
    case butterCheese
    case garlicHerb
    case asiago
    case cajun
    case sesame
    case onion
    case ranch

    static let allValues = [original, italianHerb, butter, butterCheese,
                            garlicHerb, asiago, cajun, sesame, onion, ranch]

    var description: String {
        let descriptions = ["Original", "Italian Herb", "Butter", "Butter Cheese",
                            "Garlic Herb", "Asiago", "Cajun", "Sesame", "Onion", "Ranch"]
        return descriptions[self.rawValue]
    }
}
