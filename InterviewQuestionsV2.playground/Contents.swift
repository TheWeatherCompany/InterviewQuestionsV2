import UIKit


/**
 What will didOrder print?
 */

struct Coffee {
    let flavor: String
    let size: String
}

let didOrder: ((Bool) -> Void)? = nil

func orderCoffee( _ coffee: Coffee) -> Bool {
    print("Ordered...\(coffee.size), \(coffee.flavor)")
    return true
}

let coffee = Coffee(flavor: "Black", size: "Large")
didOrder?(orderCoffee(coffee))

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/**
 Following json string and Person struct will be used for 2 method implementations
 */
let json = """
{
    "firstName": "Shawn Carter",
    "middleName: "Core",
    "lastName": "Carter",
    "age" : 52,
}
"""

struct Person: Codable {
    let firstName: String
    let lastName: String
    let age: Int
}

/**
 Write a function to convert the above json string to a struct all Person
 */
func personFrom(json: String) -> Person {
    return Person(firstName: "", lastName: "", age: 0) //replace code with implementation
}

/**
 Run this method to test personFrom(json:)
 */
//print(personFrom(json: json))

/**
 Write a function to convert a Person struct string back to a json string
 */
func jsonFrom(person: Person) -> String {
    return "" //replace code with implementation
}

/**
 Run this method to test jsonFromPerson
 */
//let newPerson = Person(firstName: "Gal", lastName: "Gadot", age: 37)
//print(jsonFrom(person: newPerson))


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


/**
 Implement an algorithm to determine if all characters in a given string are unique.
 False case:
 input: "Hello, World"
 output: false
 
 True case:
 input: "Yo Dawg!"
 output: false
 */

func isUniqueChars(str: String) -> Bool {
    return true //replace code here
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/**
 We will use the class Location defined below throughout this exercise
 The goal is to create/update a set functions to manipulate a location or set of location
 */
 
public class Location{
    let locationName:String
    var temperature:Int
    var country:String
    
    init(_ name: String, temperature:Int, country:String = "N/A"){
        locationName = name
        self.temperature = temperature
        self.country = country
    }
}

/**
 These 2 functions are used for testing purpose only. Skip to the next section.
 */
extension Location{
    func formatterPrint(){
        var name = self.locationName
        if self.country != "N/A"{
            name += (",\(self.country)")
        }
        print("\(self.temperature)° in \(name) ")
    }
}

func printAllCities(cities: [Location]){
    for location in cities{
        location.formatterPrint()
    }
}

/**
 Here we set 4 locations and add them to an array "ourLocations" that we are going to use to test our functions
 */
var newYork = Location("New York",temperature: 70)
var tokyo = Location("Tokyo",temperature: 44)
var paris = Location("Paris",temperature: 52)
var moscow = Location("Moscow",temperature: 27)

var ourLocations = [moscow,tokyo,newYork,paris]


/**
 Exercise 1: Re-write this function to return an array of Location sorted by their temperature (High to Low)
 */
func orderByTemp(locations:[Location]) -> [Location]{
    return [Location]() // <- replace by your code
}


// test for exercise 1:
let reorderedLocation = orderByTemp(locations: ourLocations)
print("Exercise 1: reoder should give New York, Paris, Tokyo, Moscow:")
printAllCities(cities: reorderedLocation)
print("#######################################################")

/**
 Exercise 2: Re-write this function to return an array of locationName String in alphabetical order
 */
func extractNameAndSort(locations:[Location]) -> [String]{
    return ["none"] // <- replace by your code
}

// test for exercise 2:
let cityNameReordered = extractNameAndSort(locations: ourLocations)
print("Exercise 2: reoder should give Moscow,New York, Paris, Tokyo:")
for city in cityNameReordered {
    print("\(city)")
}
print("#######################################################")
