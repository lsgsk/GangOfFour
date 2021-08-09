import Foundation

let application = Application()
let document = Document(name: "Doc1")

let openCommand = OpenCommand(application: application)
let pasteCommand = PasteCommand(document: document)
let macroCommand = MacroCommand()
macroCommand.add(command: openCommand)
macroCommand.add(command: pasteCommand)
macroCommand.execute()


let reciver = Light()
Switch().execute(SwitchOnCommand(reciver))
