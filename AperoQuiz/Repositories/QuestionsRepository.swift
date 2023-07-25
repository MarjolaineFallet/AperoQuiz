//
//  QuestionsRepository.swift
//  AperoQuiz
//
//  Created by Nathan Fallet on 24/07/2023.
//

import Foundation

struct QuestionsRepository {
    
    static let questions = [
        
        Question(text: " Quel est le degrès de la 3 Monts ? ", answers: [
            "8",
            "8,5",
            "9"
        ], correctAnswer: 1),
        Question(text: "Quel est le degrès de la Triple Karmeliet ? ", answers: [
            "8,4",
            "8,5",
            "8,7"
        ], correctAnswer: 0),
        Question(text: "Quel est le degrès de la Triple Secret des Moines ?", answers: [
            "8",
            "8,6",
            "8,9"
        ], correctAnswer: 0),
        Question(text: "Quel est le degrès du Don Papa ?", answers: [
            "35",
            "40",
            "45"
        ], correctAnswer: 1),
        Question(text: "Quel est le degrès du Montbazillac ?", answers: [
            "12",
            "12,2",
            "12,5"
        ], correctAnswer: 2),
        Question(text: "Qu'est-ce que l'apéritif ?", answers: [
            " Un plat principal servi avant le dessert",
            "Une boisson alcoolisée servie avant le repas pour ouvrir l'appétit",
            "Un dessert sucré"
        ] , correctAnswer: 1),
        Question(text: "Quel est l'objectif principal de l'apéritif ?", answers: [
            "Économiser de l'argent sur le repas",
            "Stimuler l'appétit avant le repas principal",
            "Remplacer le repas principal"
        ] , correctAnswer: 1),
        Question(text: "Quel est l'ingrédient principal du cocktail Mojito ?", answers: [
            "Vodka",
            "Gin",
            "Rhum"
        ], correctAnswer: 2),
        Question(text: "Quel est le nom du célèbre amuse-bouche italien composé de pain grillé garni d'huile d'olive, d'ail et de tomates ?", answers: [
            "Tzatziki",
            "Bruschetta",
            "Tapenade"
        ], correctAnswer: 1),
        Question(text: "Quel est l'ingrédient principal utilisé dans la fabrication de la bière ?", answers: [
            "Blé",
            "Orge",
            "Maïs"
        ], correctAnswer: 1),
        Question(text: "Quelle est la plus ancienne brasserie encore en activité dans le monde ?", answers: [
            "Guinness à Dublin, Irlande",
            "Heineken à Amsterdam, Pays-Bas",
            "Budweiser à Saint-Louis, États-Unis"
        ], correctAnswer: 0),
        Question(text: "Quel est le nom du processus de conversion des sucres en alcool et en dioxyde de carbone pendant la fermentation de la bière ?", answers: [
            "Distillation",
            "Pasteurisation",
            "Fermentation"
        ], correctAnswer: 2),
        Question(text: "Quel pays est réputé pour être le berceau de la bière Pilsner, une bière blonde légère et dorée ?", answers: [
            "Belgique",
            "Allemagne",
            "République tchèque"
        ], correctAnswer: 2),
        Question(text: "Quelle unité de mesure est utilisée pour déterminer le degré d'amertume d'une bière ?", answers: [
            "Degré Plato",
            "IBU (International Bitterness Units)",
            "ABV (Alcohol by Volume)"
        ], correctAnswer: 1),
        Question(text: "Quelle bière est souvent associée à une chauve-souris sur son logo et est originaire du Mexique ?", answers: [
            "Corona",
            "Dos Equis",
            "Modelo"
        ], correctAnswer: 0),
        Question(text: "Quel est le nom du verre traditionnel utilisé pour déguster une bière de type ale ?", answers: [
            "Flûte",
            "Gobelet",
            "Pinte"
        ], correctAnswer: 2),
        Question(text: "Quelle est la signification de l'appellation 'IPA' dans le monde de la bière ?", answers: [
            "India Pale Ale",
            "Irish Porter Ale",
            "Imperial Pilsner Ale"
        ], correctAnswer: 0),
        Question(text: "Quel est le nom de la célèbre loi allemande de 1516 qui réglementait la production de la bière en Allemagne ?", answers: [
            "La Loi sur la Pureté de la Bière",
            "La Loi de la Bière Allemande",
            "La Loi de la Bière Reinheitsgebot"
        ], correctAnswer: 2),
        Question(text: "Quel est le pourcentage moyen d'alcool dans une bière blonde standard ?", answers: [
            "3-4%",
            "5-6%",
            "8-9%"
        ], correctAnswer: 1),
        Question(text: "Quelle est la plus grande brasserie du monde en termes de volume de production ?", answers: [
            "Anheuser-Busch InBev",
            "Heineken",
            "Carlsberg Group"
        ], correctAnswer: 0)
    ]
}
