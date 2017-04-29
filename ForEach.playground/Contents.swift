//: Playground - noun: a place where people can play

import UIKit

var numeros = 0..<100

for id in numeros{
 
    if id % 5 == 0{
        print( "\(id) bingo ")}
    if id % 2 == 0{
        print( "\(id) par ")
    }
    else
    {
    print( "\(id) impar")
    }
    if  id >= 30 && id <= 40{
        print( "\(id) Viva swift")
    }

}
