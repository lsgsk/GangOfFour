import Foundation

let window = Window()
let context = GlyphContext()

let factory = GlyphFactory()
factory.createCharacter(char: "a").draw(windows: window, conext: context)
factory.createCharacter(char: "b").draw(windows: window, conext: context)
factory.createCharacter(char: "c").draw(windows: window, conext: context)
factory.createCharacter(char: "a").draw(windows: window, conext: context)
factory.createCharacter(char: "c").draw(windows: window, conext: context)

