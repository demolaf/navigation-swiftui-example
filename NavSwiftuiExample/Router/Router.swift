//
//  Router.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

protocol AnyRouter: AnyObject {
    associatedtype RouteType: Hashable
    var routes: [RouteType] { get set }
    var canGoBack: Bool { get }
    
    func navigate(to route: RouteType, removeAllPrevious: Bool)
    func jump(to route: RouteType)
    func popToRoot()
    func pop()
}

class Router: AnyRouter, ObservableObject {
    @Published var routes: [Route] = []
    
    var canGoBack: Bool {
        !routes.isEmpty
    }
    
    func navigate(to route: Route, removeAllPrevious: Bool = false) {
        if removeAllPrevious {
            routes = [route]
        } else {
            routes.append(route)
        }
        debugPrint("navigate() -> Router: \(routes)")
    }
    
    func jump(to route: Route) {
        if let existingIndex = routes.firstIndex(of: route) {
            routes = Array(routes.prefix(upTo: existingIndex + 1))
        } else {
            navigate(to: route)
        }
    }
    
    func popToRoot() {
        routes = []
        debugPrint("clear() -> Router: \(routes)")
    }
    
    func pop() {
        routes.removeLast()
    }
}
