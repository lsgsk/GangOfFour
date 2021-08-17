import Foundation

protocol ICompositor {
	func culculate() -> String
}

class SimpleCompositor: ICompositor {
	func culculate() -> String {
		return "simple"
	}
}

class TeXCompositor: ICompositor {
	func culculate() -> String {
		return "tex"
	}

}
class ArrayCompositor: ICompositor {
	func culculate() -> String {
		return "array"
	}
}
