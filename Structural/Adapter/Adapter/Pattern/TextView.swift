import Foundation

final class TextView: ITextView {
	func getOrigin() -> (x: Int, y: Int) {
		return (5, 10)
	}

	func getExtens() -> (width: Int, height: Int) {
		return (100, 75)
	}

	var isEmpty: Bool {
		switch self.getExtens() {
		case (0, 0):
			return true
		default:
			return false
		}
	}
}
