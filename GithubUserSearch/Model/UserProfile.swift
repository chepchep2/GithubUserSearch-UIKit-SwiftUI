//
//  UserProfile.swift
//  GithubUserSearch
//
//  Created by 조상우 on 2022/11/23.
//

import Foundation

struct UserProfile: Hashable, Identifiable, Decodable {
    
    var id: Int64
    var login: String
    var name: String
    var avataUrl: URL
    var htmlUrl: String
    var followers: Int
    var following: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case login
        case avataUrl = "avatar_url"
        case htmlUrl = "html_url"
        case followers
        case following
    }
}

extension UserProfile {
    static let mock = UserProfile(
        id: 5119292,
        login: "cafielo",
        name: "Jason Lee",
        avataUrl: URL(string: "https://avatas.githubusercontent.com/u/5119286?v=4")!,
        htmlUrl: "https://github.com/cafielo",
        followers: 100,
        following: 50
    )
}
