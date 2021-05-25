//
//  ViewController.swift
//  Exercises
//
//  Created by Daniel Washington Ignacio on 25/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    /* Exercise 1
     Define an array that contains the names “Monday”, “Tuesday”, “Wednesday”, “Thursday”, “Friday”. Use the append() method to add “Saturday” to the array. Use the += operator to add “Sunday” to the array.  
     */
    
    
    /*Exercise 2
     Use a for loop to iterate through the array above, and print out each value with its index; i.e., “Day 0 is Monday”, “Day 1 is Tuesday”, etc.
     */
    
    
    /*Exercise 3
     Define a dictionary containing author names and “readability score”:
     “Twain” 8.9
     “Hawthorne” 5.1
     “Poe” 7.3
     Print the score for “Poe”
     */
    
    
    /*Exercise 4
      Add the author “Steinbeck” to the dictionary, with the score 6.1.
     */
    
    
    /*Exercise 5
     Use a for loop to iterate through the dictionary and print out each author name and score; i.e., “Author Twain has score 8.9”, “Author Hawthorne has score 5.1”, etc.
     */
    
    
    /*Exercise 6
     The function below will take an input integer and return twice its value. Create an array of integer values. Pass this function to your array’s “map” method to create a new array of doubled values.
     func doubleMe(num: Int) -> Int { return 2*num
     }
     */
    
    
    
    //Exercise 1 and 2
    //Array Definition
    var arrayWeekName: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    
    //Exercise 3,4 5
    //Dictionary Definition
    var dictionaryNameFloat: [String: Float] = ["Twain": 8.9 , "Hawthorne": 5.1, "Poe":7.3]
    
    
    //Exercise 6
    var integerArray: [Int] = [1,2,3,4,5,6,7,8]
    var newIntegerArray: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Exercise 1
        arrayWeekName.append("Saturday")
        print("Adding using append: ")
        print(arrayWeekName)
        
        //Exercise 1
        arrayWeekName += ["Saturday"]
        print("Adding using +=: ")
        print(arrayWeekName)
        
        //Exercise 2
        var number: Int = 0
        for arrayValue in arrayWeekName{
            print("Day \(number) is \(arrayValue)")
            number = number + 1
        }
        
        
        //Exercise 3
        for (name,score) in dictionaryNameFloat{
            if name == "Poe"{
                print("The \(name) score is \(score)")
            }
        }
        
        
        //Exercise 4
        dictionaryNameFloat.updateValue(6.1, forKey: "Steinbeck")
        print(dictionaryNameFloat)

                
        //Author Twain has score 8.9
        //Exerceise 5
        for (name,score) in dictionaryNameFloat{
            print("Author \(name) has score \(score)")
        }
        
        
        //Exercise 6
        print(integerArray)
        for n in integerArray {
            newIntegerArray.append(doubleMe(num: n))
        }
        print(newIntegerArray)
        
    }

    //Exercise 6
    func doubleMe(num: Int) -> Int {
        return 2*num
    }

}

