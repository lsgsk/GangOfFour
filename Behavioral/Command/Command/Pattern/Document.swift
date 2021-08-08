import Foundation

class Application
{
	func add(document: Document) {
		print("Document added")
	}
}

class Document
{
	init(name: String) {
	}
	func open() {
		print("Document opened")
	}
	func paste() {
		print("Document pasted")
	}
}
