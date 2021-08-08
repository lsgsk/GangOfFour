protocol IWindowImp {
	func drawLine(p1: Point, p2: Point)
	func drawRect(p1: Point, p2: Point)
	func drawPolygon(points: [Point], n: Int)
	func drawText(text: String, point: Point)
}

class XWindowImp: IWindowImp {
	func drawLine(p1: Point, p2: Point) {
		print("drawLine in XWindow sytem")
	}

	func drawRect(p1: Point, p2: Point) {
		print("drawRect in XWindow sytem")
	}

	func drawPolygon(points: [Point], n: Int) {
		print("drawPolygon in XWindow sytem")
	}

	func drawText(text: String, point: Point) {
		print("drawText in XWindow sytem")
	}
}

class PMWindowImp: IWindowImp {
	func drawLine(p1: Point, p2: Point) {
		print("drawLine in PMWindow sytem")
	}

	func drawRect(p1: Point, p2: Point) {
		print("drawRect in PMWindow sytem")
	}

	func drawPolygon(points: [Point], n: Int) {
		print("drawPolygon in PMWindow sytem")
	}

	func drawText(text: String, point: Point) {
		print("drawText in PMWindow sytem")
	}
}
