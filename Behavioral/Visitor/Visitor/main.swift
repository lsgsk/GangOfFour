import Foundation

print("Hello, World!")

let visitor = EquipmentVisitor()
let compactDisk = CompactDisk(name: "CD", price: 1345.56)
compactDisk.accept(visitor: visitor)
