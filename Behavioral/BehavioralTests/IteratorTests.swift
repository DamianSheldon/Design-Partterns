//
//  IteratorTests.swift
//  BehavioralTests
//
//  Created by Meiliang Dong on 15/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

import XCTest
@testable import Behavioral

class IteratorTests: XCTestCase {
    
    func testExternalIterator() {
        
        let employees = [Employee("Jobs Steve"), Employee("Tim Cook"), Employee("Worz Steve")]
        let listOfEmployee = List(employees)
        
        let forward = ListIterator(listOfEmployee)
        printEmployees(iterator: forward)
        
        let backward = ReverseListIterator(listOfEmployee)
        printEmployees(iterator: backward)
        
        XCTAssertTrue(true, "Pass")
    }
    
    func testInternalIterator() {
        let employees = [Employee("Jobs Steve"), Employee("Tim Cook"), Employee("Worz Steve"),
                         Employee("BBC Chinese"), Employee("TechCrunch"), Employee("MikeAsh"),
                         Employee("Damian"), Employee("Sheldon"), Employee("Joy"),
                         Employee("Pony")]
        let listOfEmployee = List(employees)

        let print10Employees = PrintNEmployees(list: listOfEmployee, count: 10)
        
        XCTAssertTrue(true, "Pass")
    }
    
    func printEmployees(iterator: Iterator<Employee>) -> Void {
        iterator.first()
        
        while !iterator.isDone() {
            let employee = iterator.currentItem()
            employee.print()
            
            iterator.next()
        }
    }
}
