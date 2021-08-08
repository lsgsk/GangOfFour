import Foundation

class Window {
}

class GlyphContext {
	func isBold(index: Int) -> Bool {
		return index % 2 == 0
	}

	func isUnderline(index: Int) -> Bool {
		return index % 5 == 0
	}
}
