import Foundation

func runApplication(window: IWindows) {
	window.open()
	window.drawRect(p1: Point(x: 0 , y: 0), p2: Point(x: 100, y: 100))
	window.drawText(text: "Hello, World", point: Point(x: 35, y: 20))
	window.close()
}

runApplication(window: ApplicationWindow(windowImp: XWindowImp()))
runApplication(window: IconWindow(windowImp: PMWindowImp()))
