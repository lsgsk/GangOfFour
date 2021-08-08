//
//  Created by Лысов Александр on 31.07.2021.
//

final class Chassis: ICompositeEquipment {
	private var collection = [IEquipment]()
	private(set) var name: String

	init(name: String) {
		self.name = name
	}

	var price: Double {
		return makeIterator().reduce(0) { $0 + $1.price }
	}

	func makeIterator() -> AnyIterator<IEquipment> {
		return AnyIterator(collection.makeIterator())
	}

	func add(item: IEquipment) {
		collection.append(item)
	}

	func remove(item: IEquipment) {
		if let index = collection.firstIndex(where: { $0.name == item.name && $0.price == item.price }) {
			collection.remove(at: index)
		}
	}
}
