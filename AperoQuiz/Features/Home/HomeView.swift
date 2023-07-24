//
//  HomeView.swift
//  Apéro Quiz
//
//  Created by Nathan Fallet on 24/07/2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(spacing: 12) {
            Text("🍻 Apéro Quiz")
                .font(.largeTitle)
                .padding(.bottom, 32)
            HStack {
                Text("Liste des joueurs")
                    .font(.title)
                Spacer()
            }
            .padding(.bottom)
            ForEach(viewModel.players, id: \.name) { player in
                HStack {
                    Text(player.name)
                    Spacer()
                    Button(
                        action: {
                            viewModel.players.removeAll { $0.name == player.name }
                        },
                        label: {
                            Image(systemName: "xmark")
                        }
                    )
                }
            }
            HStack {
                TextField("Nom du joueur...", text: $viewModel.addingPlayer)
                    .onSubmit(viewModel.addPlayer)
                Button(action: viewModel.addPlayer) {
                    Image(systemName: "plus")
                }
            }
            Spacer()
            Button("Jouer", action: viewModel.play)
                .buttonStyle(FilledButtonStyle())
                .disabled(viewModel.players.isEmpty)
        }
        .padding()
        .fullScreenCover(isPresented: $viewModel.playing) {
            QuizView(
                isPresented: $viewModel.playing,
                viewModel: QuizViewModel(
                    players: viewModel.players,
                    questions: QuestionsRepository.questions
                )
            )
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
    
}
