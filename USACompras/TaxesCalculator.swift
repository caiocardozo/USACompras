//
//  TaxesCalculator.swift
//  USACompras
//
//  Created by Caio Cardozo on 27/06/18.
//  Copyright © 2018 Caio Cardozo. All rights reserved.
//

import Foundation

class TaxesCalculator {
    
    //vou usar o conceito de sington e manter uma unica instancia da classe ja que ela vai ser usada em varias views controllers
    static let shared = TaxesCalculator()
    
    var dolar: Double = 3.5
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0
    
    let formatter = NumberFormatter()
    
    //cria uma variavel computada para facilitar o retorno do valor
    var shoppingValueInRea: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double{
        return shoppingValue * stateTax/100
    }
    
    var iosValue: Double{
        return (shoppingValue + stateTax) * iof/100
    }
    
    func calculate(usingCreditCard: Bool) -> Double {
        var finalvalue = shoppingValue + stateTaxValue
        if usingCreditCard{
            finalvalue += iof
        }
        return finalvalue * dolar
    }
    
    func convertToDouble(_ string: String) -> Double{
        //define o number style como estou trabalhando com varios tipos de numeros tem que ficar setando.
        formatter.numberStyle = .none
        //convert o numero em string.
        return formatter.number(from: string)!.doubleValue
    }
    
    func getFormattedValue(of value: Double, withCurrency currency: String) -> String{
        //define o style
        formatter.numberStyle = .currency
        //define o simbulo
        formatter.currencySymbol = currency
        //escolhe se vai usar o separator para virgula]
        formatter.alwaysShowsDecimalSeparator = true
        return formatter.string(for: value)!
    }
    
    
    //tornando o construtor privado permito que a instancia seja criada apenas aqui na classe
    private init(){
        formatter.usesGroupingSeparator = true
    }
}
