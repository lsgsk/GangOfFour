protocol ICompositeEquipment: IEquipment {
	func makeIterator() -> AnyIterator<IEquipment>
}
