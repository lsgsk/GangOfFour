import Foundation

protocol IEquipment: IElement {
	var name: String { get }
	var price: Double { get }
	func add(item: IEquipment)
	func remove(item: IEquipment)
}

extension IEquipment {
	func add(item: IEquipment) {
	}
	func remove(item: IEquipment) {
	}
}

struct FloppyDisk: IEquipment {
	private(set) var name: String
	private(set) var price: Double
	
	init(name: String, price: Double) {
		self.name = name
		self.price = price
	}

	func accept(visitor: IVisitor) {
		visitor.visit(floppyDisk: self)
	}
}

struct CompactDisk: IEquipment {
	private(set) var name: String
	private(set) var price: Double

	init(name: String, price: Double) {
		self.name = name
		self.price = price
	}

	func accept(visitor: IVisitor) {
		visitor.visit(compactDisk: self)
	}
}
