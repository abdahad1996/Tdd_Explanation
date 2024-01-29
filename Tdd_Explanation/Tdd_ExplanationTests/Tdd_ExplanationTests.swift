//
//  Tdd_ExplanationTests.swift
//  Tdd_ExplanationTests
//
//  Created by macbook abdul on 29/01/2024.
//

import XCTest
@testable import Tdd_Explanation


class Calculator {
    
    func add(_ num1:Int,_ num2:Int) -> Int{
        return num1 + num2
    }
}

class Tdd_ExplanationTests: XCTestCase {

   func test_Add_addPositiveNumber()
    {
        //given
        let sut = makeSUT()
        
        //when
        let result = sut.add(3,10)

        //then
        
        XCTAssertEqual(13, result)
        
    }
    
    func test_Add_addNegativeNumber()
     {
         //given
         let sut = makeSUT()
         
         //when
         let result = sut.add(-3,-10)

         //then
         
         XCTAssertEqual(-13, result)
         
     }
    
    
    func makeSUT() -> Calculator {
        return Calculator()
    }

}
