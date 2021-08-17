import Foundation

protocol IElement {
	func accept(visitor: IVisitor)
}

protocol IVisitor{
	func visit(floppyDisk: FloppyDisk)
	func visit(compactDisk: CompactDisk)
}

class EquipmentVisitor: IVisitor {
	func visit(floppyDisk: FloppyDisk) {
		print("this is floppyDisk, price \(floppyDisk.price)")
	}

	func visit(compactDisk: CompactDisk) {
		print("this is compactDisk, price \(compactDisk.price)")
	}
}
