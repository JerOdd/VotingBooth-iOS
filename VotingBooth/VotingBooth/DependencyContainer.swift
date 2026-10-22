//
//  DependencyContainer.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 20/10/2026.
//

import Foundation

final class DependencyContainer {
    static let shared = DependencyContainer()
    private var factories: [ObjectIdentifier: () -> Any] = [:]

    func register<T>(_ type: T.Type, factory: @escaping () -> T) {
        factories[ObjectIdentifier(type)] = factory
    }

    func resolve<T>(_ type: T.Type = T.self) -> T {
        guard let factory = factories[ObjectIdentifier(type)],
              let instance = factory() as? T else {
            fatalError("No registration for \(T.self)")
        }
        return instance
    }
}

@propertyWrapper
struct Inject<T> {
    let wrappedValue: T
    init() { wrappedValue = DependencyContainer.shared.resolve() }
}
