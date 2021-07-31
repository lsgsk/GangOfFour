//
//  Created by Лысов Александр on 31.07.2021.
//

struct FloppyDisk: IEquipment {
	private(set) var name: String
	private(set) var price: Double

	init(name: String, price: Double) {
		self.name = name
		self.price = price
	}
}

struct CompactDisk: IEquipment {
	private(set) var name: String
	private(set) var price: Double

	init(name: String, price: Double) {
		self.name = name
		self.price = price
	}
}
