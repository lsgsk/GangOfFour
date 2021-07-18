import Foundation

class Wall: IWall {
	required init() {
	}

	func copy(with zone: NSZone? = nil) -> Any {
		let prototype = type(of: self).init()
		return prototype
	}

	func enter() {
		print("Hit the wall")
	}
}
