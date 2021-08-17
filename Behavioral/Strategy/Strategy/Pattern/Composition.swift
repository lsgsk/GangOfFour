import Foundation

protocol IComposition {
	func repair()
}

class Composition: IComposition {
	private var compositor: ICompositor

	required init(compositor: ICompositor) {
		self.compositor = compositor
	}

	func change(compositor: ICompositor) {
		self.compositor = compositor
	}

	func repair() {
		print(self.compositor.culculate())
	}
}
