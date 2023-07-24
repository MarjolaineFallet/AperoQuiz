//
//  FilledButtonStyle.swift
//  AperoQuiz
//
//  Created by Nathan Fallet on 24/07/2023.
//

import SwiftUI

struct FilledButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
    
}
