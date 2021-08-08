//
//  Created by Лысов Александр on 31.07.2021.
//

protocol IVisualComponent {
	func draw()
	func resize()
}

class Button: IVisualComponent {
	private let name: String

	init(name: String) {
		self.name = name
	}

	func draw() {
		print("Draw button \(self.name)")
	}
	func resize() {
		print("Resize button \(self.name)")
	}
}
