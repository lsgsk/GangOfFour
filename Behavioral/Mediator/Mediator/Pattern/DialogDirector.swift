import Foundation

protocol IDialogDirector {
	func showDialog(in window: Window)
	func widgetChanged(widget: IWidget)
}

class FontDialogDirector: IDialogDirector
{
	private var ok: Button!
	private var fontList: ListBox!
	private var fontName: EntryField!

	func showDialog(in window: Window) {
		self.ok = Button(mediator: self)
		self.fontList = ListBox(mediator: self)
		self.fontName = EntryField(mediator: self)
		window.ok = ok
		window.fontList = fontList
		window.fontName = fontName
		print("showDialog")
	}

	func widgetChanged(widget: IWidget) {
		if widget === self.fontList {
			self.fontName.set(font: self.fontList.getSelection())
		}
		else if widget === ok {
			self.close()
		}
	}

	func close() {
		print("Close dialog")
	}
}
