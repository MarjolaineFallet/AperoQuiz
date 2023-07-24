//
//  QuizViewModel.swift
//  AperoQuiz
//
//  Created by Nathan Fallet on 24/07/2023.
//

import Foundation

class QuizViewModel: ObservableObject {
    
    var players: [Player]
    let questions: [Question]
    
    @Published var questionIndex = 0
    @Published var playerIndex = 0
    @Published var selectedAnswer: Int? = nil
    @Published var showPlayersScore: Bool = false
    
    var currentQuestion: Question {
        questions[questionIndex]
    }
    
    var currentPlayer: Player {
        players[playerIndex]
    }
    
    init(players: [Player], questions: [Question]) {
        self.players = players
        self.questions = questions
    }
    
    func answerTapped(index: Int) {
        guard selectedAnswer == nil else { return }
        selectedAnswer = index
    }
    
    func nextPlayer() {
        players[playerIndex].lastQuestionCorrect = selectedAnswer == currentQuestion.correctAnswer
        players[playerIndex].score += currentPlayer.lastQuestionCorrect ? 1 : 0
        playerIndex += 1
        selectedAnswer = nil
    }
    
    func nextQuestion() {
        playerIndex = 0
        questionIndex += 1
        
        if questionIndex == questions.count {
            players.sort(by: { $0.score > $1.score })
        }
    }
    
}
