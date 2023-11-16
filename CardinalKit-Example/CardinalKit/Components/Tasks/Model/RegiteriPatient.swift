//
//  RegiteriPatient.swift
//  CardinalKit_Example
//
//  Created by Abdallah Mohammed Nsour on 16/11/2023.
//  Copyright © 2023 CardinalKit. All rights reserved.
//

import ResearchKit


struct fileRgistration {
    static let registerPatientsFlow: ORKOrderedTask = {
        var steps = [ORKStep]()
        let instructionStep = ORKInstructionStep(identifier: "IntroStep")
        instructionStep.title = "Registration"
        instructionStep.text = "Please enter your information"

        steps += [instructionStep]

        let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)

        nameAnswerFormat.multipleLines = false
        let nameQuestionStepTitle = "Name"
        let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
        nameAnswerFormat.placeholder = "enrte your name"


        steps += [nameQuestionStep]

        let dateAnswerFormat = ORKDateAnswerFormat(style: .date)
        let dateQuestionStepTitle = "Date of birth"

        let dateQuestionStep = ORKQuestionStep(identifier: "DateQuestionStep", title: dateQuestionStepTitle, answer: dateAnswerFormat)

        return ORKOrderedTask(identifier: "RegisterPatientsTask", steps: steps)
    }()


}
