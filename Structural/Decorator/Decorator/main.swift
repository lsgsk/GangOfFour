import Foundation

func draw(component: IVisualComponent) {
	component.draw()
}

draw(component: Button(name: "#1"))
draw(component: BorderDecorator(Button(name: "#2")))
draw(component: ScrollDecorator(BorderDecorator(Button(name: "#3"))))

