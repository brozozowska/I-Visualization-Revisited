/*:
## More about Colors
 
 Until now, you've specified colors, each starting with a period, from a fixed list. But that list represents a very small view into a full-featured type named `Color`. Each instance of `Color` represents one of the millions of colors your Mac or iOS device can display. Imagine the charts you could create with so many colors available to you. (The `Color` type in this playground is an abstraction on top of the platform-specific `UIColor` and `NSColor` types for iOS and macOS, respectively.)
 
 For fine-grained color control, `Color` has several useful initializers that take arguments of type `Double`.
 
- `init(red:green:blue:alpha:)` takes `Double` arguments, each ranging from 0 to 1, indicating the amount of red, green, blue, and alpha that make up the color. Alpha is the transparency level: An item with partial transparency (any alpha less than 1.0), will blend its color with the colors of items underneath it.
- `init(hue:saturation:brightness:alpha:)` also takes `Double` arguments. Instead of mixing the red, green, and blue primary colors, this initializer defines a color by its hue, saturation, and brightness, as well as its transparency. Hue ranges from red, at 0.0, through the rainbow spectrum of orange, yellow, and so on, until wrapping back to red at 1.0. Saturation, from 0.0 to 1.0, describes how much "color" is in the color. (Imagine the difference between a bucket of pure red paint versus a bucket of white paint with one drop of red paint added to it.) Brightness is the relative darkness or lightness of a starting color, from black at 0.0 (no brightness) to white at 1.0 (full brightness).
- `init(white:alpha:)` is a quick way to create grayscale colors with just two `Double` arguments.
 
 All of the color names you've been using, such as `.red` and `.black`, are just properties of the `Color` type. They're special properties called *class properties* because they're part of the type itself, not part of its instances. So instead of creating a new `Color` and then referring to its `black` property, you just refer to the `black` property of `Color` itself, like this: `Color.black`. Because Swift is good at type inference, you can leave out the `Color` part of this expression when using it in a place where a `Color` is expected. For example, the `color` property of both `PieWedge` and `ChartKeyItem` is actually a `Color`.
 */
//:  - callout(Challenge): Use custom colors in a pie chart. Feel free to play around with hue, saturation, and brightness, combining them in different ways in your chart.
 makePieChart()

let wedge1 = PieWedge(proportion: 0.2, color: Color(red: 1, green: 0.3, blue: 0.6, alpha: 0.9), scale: 1, offset: 0)
let wedge2 = PieWedge(proportion: 0.2, color: Color(hue: 0.4, saturation: 1, brightness: 1, alpha: 0.8), scale: 1, offset: 0)
let wedge3 = PieWedge(proportion: 0.2, color: Color(hue: 0.65, saturation: 0.6, brightness: 0.7, alpha: 1), scale: 1.1, offset: 0.1)
let wedge4 = PieWedge(proportion: 0.2, color: Color(white: 0.2, alpha: 1), scale: 1, offset: 0)
let wedge5 = PieWedge(proportion: 0.2, color: Color(white: 0.4, alpha: 1), scale: 1, offset: 0)

let key1 = ChartKeyItem(color: Color(red: 1, green: 0.3, blue: 0.6, alpha: 0.9), name: "wedge1")
let key2 = ChartKeyItem(color: Color(hue: 0.4, saturation: 1, brightness: 1, alpha: 0.8), name: "wedge2")
let key3 = ChartKeyItem(color: Color(hue: 0.65, saturation: 0.6, brightness: 0.7, alpha: 1), name: "wedge3")
let key4 = ChartKeyItem(color: Color(white: 0.2, alpha: 1), name: "wedge4")
let key5 = ChartKeyItem(color: Color(white: 0.4, alpha: 1), name: "wedge5")

let allWedges = [wedge1, wedge2, wedge3, wedge4, wedge5]
let allKeys = [key1, key2, key3, key4, key5]

pieChartView.wedges.append(contentsOf: allWedges)
keyView.keyItems.append(contentsOf: allKeys)

pieChartView.labelDisplayStyle = .exterior
//:  - callout(Challenge): Use tranparency to create cool effects. (Hint: You can have pie wedges that add up to more than 100% of the pie.)
let transWedge = PieWedge(proportion: 1, color: Color(hue: 0.4, saturation: 1, brightness: 1, alpha: 0.3), scale: 1.3, offset: 0)

pieChartView.wedges.append(transWedge)
//:  - callout(Challenge): Recreate the `addWedge(withProportion:color:)` and `addKeyItem(withLabel:color:)` functions from the original visualization API.

/*:
[Previous](@previous)  |  page 4 of 9  |  [Next: Bar Charts, Revisited](@next)
 */
