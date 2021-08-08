import Foundation

protocol IHelpHandler: AnyObject {
	init(parent: IHelpHandler?)
	func handleHelp(message: Int) -> Bool
}

final class Button: IHelpHandler
{
	private let parent: IHelpHandler?
	init(parent: IHelpHandler?) {
		self.parent = parent
	}

	func handleHelp(message: Int) -> Bool {
		switch message {
		case 0..<10:
			print("Button handleHelp")
			return true
		default:
			return parent?.handleHelp(message: message) ?? false
		}
	}
}

final class View: IHelpHandler
{
	private let parent: IHelpHandler?
	init(parent: IHelpHandler?) {
		self.parent = parent
	}

	func handleHelp(message: Int) -> Bool {
		switch message {
		case 10..<100:
			print("View handleHelp")
			return true
		default:
			return parent?.handleHelp(message: message) ?? false
		}
	}
}

final class Application: IHelpHandler
{
	private let parent: IHelpHandler?
	init(parent: IHelpHandler?) {
		self.parent = parent
	}

	func handleHelp(message: Int) -> Bool {
		print("Application handleHelp")
		return true
	}
}
