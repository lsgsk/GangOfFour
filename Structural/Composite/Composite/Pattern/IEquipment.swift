protocol IEquipment {
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
