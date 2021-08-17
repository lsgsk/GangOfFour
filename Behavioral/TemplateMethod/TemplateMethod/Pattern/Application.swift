import Foundation

protocol IDocument {
	func open()
	func doRead()
}

struct Document: IDocument {
	func open() {
		print("Open document")
	}
	func doRead() {
		print("Read document")
	}
}

class Application {
	private var docs = [IDocument]()
	func openDocument(name: String) {
		if (!self.canOpenDocument(name: name)) {
			return
		}
		let doc = self.doCreateDocument()
		docs.append(doc)
		aboutToOpenDocument(doc)
		doc.open()
		doc.doRead()
	}

	fileprivate func aboutToOpenDocument(_ document: IDocument) {
		print("About document")
	}

	fileprivate func canOpenDocument(name: String) -> Bool {
		fatalError("Abstract method")
	}

	fileprivate func doCreateDocument() -> IDocument {
		fatalError("Abstract method")
	}
}

class DrawApplication: Application {
	override func canOpenDocument(name: String) -> Bool {
		return name.contains(".txt")
	}

	override func doCreateDocument() -> IDocument {
		return Document()
	}
}
