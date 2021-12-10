//
//  SearchUserTests.swift
//  SearchUserTests
//
//  Created by user204006 on 12/1/21.
//

import XCTest
import Combine
@testable import SearchUser

class SearchUserTests: XCTestCase {

    override func setUp() {
        
    }
    
    override func tearDown() {
        subscriptions = []
    }
    
    var subscriptions = Set<AnyCancellable>()
    
    func test_getting_users_success() {
        let result = Result<[User], APIError>.success([User.example1()])
        let fetcher = UserFetcher(service: APIMockService(result: result))
        
        let promise = expectation(description: "getting users")
        
        fetcher.$users.sink { users in
            if users.count > 0 {
                promise.fulfill()
            }
        }.store(in: &subscriptions)
        
        wait(for: [promise], timeout: 2)
    }
    
    func test_loading_error() {
        
        let result = Result<[User], APIError>.failure(APIError.badURL)
        let fetcher = UserFetcher(service: APIMockService(result: result))
        
        let promise = expectation(description: "show error message")
        fetcher.$users.sink { users in
            if !users.isEmpty {
                XCTFail()
            }
        }.store(in: &subscriptions)
        
        fetcher.$errorMessage.sink { message in
            if message != nil {
                promise.fulfill()
            }
        }.store(in: &subscriptions)
        
        wait(for: [promise], timeout: 2)

    }

}
