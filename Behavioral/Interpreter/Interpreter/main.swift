import Foundation

protocol IBooleanExp {
	func evaluate() -> Bool
}

class VariableExp: IBooleanExp {
	private let char: String
	private var value: Bool?
	init(_ char: String) {
		self.char = char
	}

	func assign(_ value: Bool) {
		self.value = value
	}

	func evaluate() -> Bool {
		guard let value = self.value else { fatalError("Не инициализирован") }
		return value
	}
}

class AndExp: IBooleanExp {
	private let left: IBooleanExp
	private let right: IBooleanExp

	init(_ left: IBooleanExp, _ right: IBooleanExp) {
		self.left = left
		self.right = right
	}

	func evaluate() -> Bool {
		return left.evaluate() && right.evaluate()
	}
}

class OrExp: IBooleanExp {
	private let left: IBooleanExp
	private let right: IBooleanExp

	init(_ left: IBooleanExp, _ right: IBooleanExp) {
		self.left = left
		self.right = right
	}

	func evaluate() -> Bool {
		return left.evaluate() || right.evaluate()
	}
}

class Constant: IBooleanExp {
	private var value: Bool
	init(_ value: Bool) {
		self.value = value
	}

	func evaluate() -> Bool {
		return value
	}
}

class NotExp: IBooleanExp {
	private let value: IBooleanExp
	init(_ value: IBooleanExp) {
		self.value = value
	}

	func evaluate() -> Bool {
		return !value.evaluate()
	}
}

let x = VariableExp("X")
let y = VariableExp("Y")
let expression = OrExp(AndExp(Constant(true), x),
					   AndExp(y, NotExp(x)))
x.assign(false)
y.assign(true)
print(expression.evaluate())
