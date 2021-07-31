//
//  Created by Лысов Александр on 31.07.2021.
//

class ScrollDecorator: IVisualComponent {
	private let component: IVisualComponent

	init(_ component: IVisualComponent) {
		self.component = component
	}

	func draw() {
		self.component.draw()
		self.drawScroll()
	}

	func resize() {
		self.component.resize()
	}

	private func drawScroll() {
		print("draw Scroll")
	}
}

class BorderDecorator: IVisualComponent {
	private let component: IVisualComponent

	init(_ component: IVisualComponent) {
		self.component = component
	}

	func draw() {
		self.component.draw()
		self.drawBorder()
	}

	func resize() {
		self.component.resize()
	}
	private func drawBorder() {
		print("drawBorder")
	}
}
