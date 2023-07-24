//
//  QuizView.swift
//  AperoQuiz
//
//  Created by Nathan Fallet on 24/07/2023.
//

import SwiftUI

struct QuizView: View {
    
    @Binding var isPresented: Bool
    @StateObject var viewModel: QuizViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if viewModel.questionIndex < viewModel.questions.count {
                // Answering a question
                Text(viewModel.currentQuestion.text)
                    .font(.title2)
                Text(viewModel.playerIndex < viewModel.players.count ? viewModel.currentPlayer.name : "Résultat")
                    .foregroundColor(.secondary)
                ProgressView(
                    value: Double(viewModel.questionIndex),
                    total: Double(viewModel.questions.count)
                )
                .padding(.bottom, 16)
                
                if viewModel.playerIndex < viewModel.players.count {
                    ForEach(Array(viewModel.currentQuestion.answers.enumerated()), id: \.offset) { index, answer in
                        HStack {
                            Text(answer)
                            Spacer()
                        }
                        .padding()
                        .background(
                            viewModel.selectedAnswer == index ?
                            viewModel.currentQuestion.correctAnswer == index ? Color.green : Color.red
                            : Color.clear
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.gray, lineWidth: 1)
                        )
                        .onTapGesture {
                            viewModel.answerTapped(index: index)
                        }
                    }
                    Button("Joueur suivant", action: viewModel.nextPlayer)
                        .buttonStyle(FilledButtonStyle())
                        .disabled(viewModel.selectedAnswer == nil)
                } else {
                    ForEach(viewModel.players, id: \.name) { player in
                        HStack {
                            Text(player.name)
                            Spacer()
                            Text(player.lastQuestionCorrect ? "OK" : "BOUH")
                                .foregroundColor(player.lastQuestionCorrect ? Color.green : Color.red)
                        }
                    }
                    .padding(.bottom, 16)
                    Button(viewModel.questionIndex + 1 == viewModel.questions.count ? "Fin" : "Question suivante", action: viewModel.nextQuestion)
                        .buttonStyle(FilledButtonStyle())
                        .cornerRadius(10)
                }
                Spacer()
            } else {
                // Game is done
                Text("🍻 Scores")
                    .font(.largeTitle)
                    .padding(.bottom, 16)
                ForEach(viewModel.players, id: \.name) { player in
                    HStack {
                        Text(player.name)
                        Spacer()
                        Text("\(player.score) pts")
                    }
                }
                Spacer()
                Button("Fermer", action: {
                    isPresented = false
                })
                .buttonStyle(FilledButtonStyle())
                .disabled(viewModel.players.isEmpty)
            }
        }
        .padding()
    }
    
}

struct QuizView_Previews: PreviewProvider {
    
    static var previews: some View {
        QuizView(
            isPresented: .constant(true),
            viewModel: QuizViewModel(
                players: [
                    Player(name: "Nathan"),
                    Player(name: "Abel")
                ],
                questions: QuestionsRepository.questions
            )
        )
    }
    
}
