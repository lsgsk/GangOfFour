//
//  Created by Лысов Александр on 31.07.2021.
//

protocol ICompositeEquipment: IEquipment {
	func makeIterator() -> AnyIterator<IEquipment>
}
