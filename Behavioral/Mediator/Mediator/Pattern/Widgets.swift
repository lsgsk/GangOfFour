import Foundation

class Window
{
	weak var ok: Button?
	weak var fontList: ListBox?
	weak var fontName: EntryField?
}

protocol IWidget: AnyObject {
	func changed()
}

class ListBox: IWidget {
	private let mediator: IDialogDirector
	private var selected: Int = -1
	init(mediator: IDialogDirector) {
		self.mediator = mediator
	}

	func itemClick(index: Int) {
		self.selected = index
		self.changed()
	}

	func changed() {
		self.mediator.widgetChanged(widget: self)
	}

	func getSelection() -> Int {
		return self.selected
	}
}

class EntryField: IWidget {
	private let mediator: IDialogDirector
	init(mediator: IDialogDirector) {
		self.mediator = mediator
	}

	func textChanged(new: String) {
		print("New value: \(new)")
		self.changed()
	}

	func changed() {
		self.mediator.widgetChanged(widget: self)
	}

	func set(font: Int) {
		print("New font \(font)")
	}
}

class Button: IWidget {
	private let mediator: IDialogDirector

	init(mediator: IDialogDirector) {
		self.mediator = mediator
	}

	func changed() {
		self.mediator.widgetChanged(widget: self)
	}

	func pressed() {
		self.changed()
	}
}
