import Foundation

final class TextShapeAdapter: IShape {
	private let adaptee: ITextView

	init(adaptee: ITextView) {
		self.adaptee = adaptee
	}

	func boundingBox() -> Frame {
		let (x, y) = self.adaptee.getOrigin()
		let (width, height) = self.adaptee.getExtens()
		return Frame(x0: x, y0: y,
					 x1: x + width, y1: y,
					 x2: x, y2: y + height,
					 x3: x + width, y3: y + height)
	}
}
