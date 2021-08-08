//
//  Created by Lsgsk on 08.05.2021.
//

var chassis1 = Chassis(name: "PC Chassis")
chassis1.add(item: FloppyDisk(name: "3.5in Floppy", price: 10))
chassis1.add(item: FloppyDisk(name: "3.5in Floppy", price: 20))
chassis1.add(item: CompactDisk(name: "Compact disk  1", price: 40))
var chassis2 = Chassis(name: "PC Chassis")
chassis2.add(item: FloppyDisk(name: "3.5in Floppy", price: 20))
chassis2.add(item: CompactDisk(name: "Compact disk 2", price: 40))
chassis2.add(item: chassis1)

print("The price is \(chassis2.price)")
