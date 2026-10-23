//
//  APIClient.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import Foundation

protocol APIClientProtocol: Sendable {
    
    func get<T: Decodable>(_ path: String) async throws -> T
    
}

class APIClient: APIClientProtocol {
    
    private let baseUrl: URL = URL(string: "http://localhost:8081/mobile/v1")!
    
    private let decoder: JSONDecoder = {
        let d = JSONDecoder()
        d.keyDecodingStrategy = .convertFromSnakeCase
        d.dateDecodingStrategy = .iso8601
        return d
    }()
    
    func get<T: Decodable>(_ path: String) async throws -> T {
        let (data, response) = try await URLSession.shared.data(from: baseUrl.appending(path: path))
        return try decoder.decode(T.self, from: data)
    }
    
}
