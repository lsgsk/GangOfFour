import Foundation

let hierarchy = Button(parent: View(parent: Application(parent: nil)))
_ = hierarchy.handleHelp(message: 0)
_ = hierarchy.handleHelp(message: 5)
_ = hierarchy.handleHelp(message: 11)
_ = hierarchy.handleHelp(message: 88)
_ = hierarchy.handleHelp(message: 500)
