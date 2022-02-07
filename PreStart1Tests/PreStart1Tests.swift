//
//  PreStart1Tests.swift
//  PreStart1Tests
//
//  Created by Mauro Arantes on 04/02/2022.
//

import XCTest
@testable import PreStart1

class PreStart1Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTutorCell() {
        let tutor = Tutor(name: "Mahesh", headline: "Manager", bio: "iOS")
        let tutorCell = TutorCell(tutor: tutor)
        
        XCTAssertEqual(tutor.name, tutorCell.tutor.name)
    }
    
    func testTutorDetail() {
        let tutor = Tutor(name: "Mahesh", headline: "Manager", bio: "iOS")
        let tutorDetail = TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)
        
        XCTAssertEqual(tutor.name, tutorDetail.name)
    }

}
