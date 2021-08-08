import Foundation

protocol ICommand: AnyObject {
	func execute()
}

final class OpenCommand: ICommand {
	private let application: Application

	init(application: Application) {
		self.application = application
	}

	func execute() {
		let name = self.askUser()
		if name.isEmpty == false  {
			let document = Document(name: name)
			application.add(document: document)
			document.open()
		}
	}

	private func askUser() -> String {
		let letters = "abcdefghijklmnopqrstuvwxyz"
		return String((0..<10).map{ _ in letters.randomElement()! })
	}
}

final class PasteCommand: ICommand {
	private let document: Document

	init(document: Document) {
		self.document = document
	}

	func execute() {
		document.paste()
	}
}


final class MacroCommand: ICommand {
	private var cmds = [ICommand]()
	func add(command: ICommand) {
		self.cmds.append(command)

	}
	func remove(command: ICommand) {
		self.cmds.removeAll {
			$0 === command
		}
	}
	func execute() {
		for item in self.cmds {
			item.execute()
		}
	}
}
