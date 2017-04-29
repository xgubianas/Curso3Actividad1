//: Playground - noun: a place where people can play

import UIKit

func calcularIMC(peso : Double, altura : Double){

    let imc = peso / (altura * altura)
    print (imc)
    return imc
}

calcularIMC(84, altura: 1.84)

calcularIMC(78, altura: 1.84)


let imc = calcularIMC(84
, altura: <#T##Double#>)