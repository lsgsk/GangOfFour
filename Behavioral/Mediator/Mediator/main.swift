import Foundation

let window = Window()
let director = FontDialogDirector()
director.showDialog(in: window)
window.fontName?.textChanged(new: "111")
window.fontList?.itemClick(index: 3)
window.fontName?.textChanged(new: "222")
window.ok?.pressed()


