//
//  View+Extension.swift
//  NavSwiftuiExample
//
//  Created by Ademola Fadumo on 24/11/2024.
//

import SwiftUI

// MARK: - Conditional navigation with transition

extension View {
    @ViewBuilder
    func push<Content: View>(
        _ condition: Bool,
        transition: AnyTransition? = .none,
        view: @escaping () -> Content
    ) -> some View {
        if condition {
            VStack(alignment: .leading) {
                view()
            }
            .transition(transition ?? .asymmetric(
                insertion: !condition ? .move(edge: .leading) : .move(edge: .trailing),
                removal: .move(edge: .trailing)))
        } else {
            self
        }
    }
}
