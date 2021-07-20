import Foundation

struct Frame {
	let x0: Int; let y0: Int
	let x1: Int; let y1: Int
	let x2: Int; let y2: Int
	let x3: Int; let y3: Int
}

protocol IShape {
	func boundingBox() -> Frame
}

protocol ITextView {
	func getOrigin() -> (x: Int, y: Int)
	func getExtens() -> (width: Int, height: Int)
	var isEmpty: Bool { get }
}
