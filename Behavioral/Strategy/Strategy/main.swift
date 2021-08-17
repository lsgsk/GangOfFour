import Foundation

let composition = Composition(compositor: SimpleCompositor())
composition.repair()
composition.change(compositor: TeXCompositor())
composition.repair()
