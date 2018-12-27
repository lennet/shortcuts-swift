import Foundation

public enum MathOperation: String {
    case add = "+"
    case substract = "-"
    case multiply = "×"
    case divide = "÷"
}

public func calculate(_ operation: MathOperation, value: Number) -> ActionContainer {
    let parameters: PropertyList = [
        "WFMathOperation": operation.rawValue,
        "WFMathOperand": value
    ]
    return Action(identifier: "is.workflow.actions.math", parameters: parameters)
}

public func calculate(_ operation: MathOperation, with variable: ActionOutputVariable) -> ActionContainer {
    let parameters: PropertyList = [
        "WFMathOperation": operation.rawValue,
        "WFMathOperand": variable.propertyList
    ]
    return Action(identifier: "is.workflow.actions.math", parameters: parameters)
}

