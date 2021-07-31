//
//  Created by Лысов Александр on 31.07.2021.
//

protocol IWindows {
	init(windowImp: IWindowImp)
	func draw()
	func open()
	func close()
	func drawLine(p1: Point, p2: Point)
	func drawRect(p1: Point, p2: Point)
	func drawPolygon(points: [Point], n: Int)
	func drawText(text: String, point: Point)
}

class ApplicationWindow: IWindows {
	private let windowImp: IWindowImp

	required init(windowImp: IWindowImp) {
		self.windowImp = windowImp
	}

	func draw() { print("draw()") }
	func open() { print("open()") }
	func close() { print("close()") }

	func drawLine(p1: Point, p2: Point) {
		self.windowImp.drawLine(p1: p1, p2: p2)
	}
	func drawRect(p1: Point, p2: Point) {
		self.windowImp.drawRect(p1: p1, p2: p2)
	}
	func drawPolygon(points: [Point], n: Int) {
		self.windowImp.drawPolygon(points: points, n: n)
	}
	func drawText(text: String, point: Point) {
		self.windowImp.drawText(text: text, point: point)
	}
}

class IconWindow: IWindows {
	private let windowImp: IWindowImp

	required init(windowImp: IWindowImp) {
		self.windowImp = windowImp
	}

	func draw() { print("draw()") }
	func open() { print("open()") }
	func close() { print("close()") }

	func drawLine(p1: Point, p2: Point) {
		self.windowImp.drawLine(p1: p1, p2: p2)
	}
	func drawRect(p1: Point, p2: Point) {
		self.windowImp.drawRect(p1: p1, p2: p2)
	}
	func drawPolygon(points: [Point], n: Int) {
		self.windowImp.drawPolygon(points: points, n: n)
	}
	func drawText(text: String, point: Point) {
		self.windowImp.drawText(text: text, point: point)
	}
}
