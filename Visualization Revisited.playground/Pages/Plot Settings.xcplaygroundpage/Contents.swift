/*:
## Plot Settings
 
 How do you want the data points on your scatter plots to display? `PlotPoint` actually has one final property, named `symbol`, of type `Symbol`.
 
 `Symbol` is an enum with the following cases:
 
- `circle`
- `square`
- `diamond`
- `triangle`
- `x`
- `plus`
 
 You can use these new properties by calling a new intializer for `PlotPoint`:\
 `init(x:y:color:size:symbol:)`

 `PlotView` itself gains the capability to draw lines with a new property named `mode` of type `PlotMode`. The `PlotMode` enum has the following cases:
 
- `pointsOnly`
- `linesOnly`
- `pointsAndLines`
 
 The `pointsOnly` mode is the default. If you use either of the other two modes, the `PlotView` will make groups of all points that have the same color and symbol, sort each group by increasing `x` value, and draw lines between points in each group.
 
 `ChartKeyItem` also gains a `symbol` property and a new initializer, `init(color:name:symbol:)`, so you can display symbols in the chart key to match those in your plot.

 - callout(Exercise): Experiment with plot point symbols, line drawing modes, and key item symbols.
 */
makePlot()

let point1 = PlotPoint(x: 1, y: 0.6, color: .black, size: 5, symbol: .circle)
let point2 = PlotPoint(x: 1.1, y: 1.1, color: .black, size: 10, symbol: .triangle)
let point3 = PlotPoint(x: 1.8, y: 1.05, color: .black, size: 5, symbol: .circle)
let point4 = PlotPoint(x: 2.1, y: 0.9, color: .black, size: 10, symbol: .triangle)
let point5 = PlotPoint(x: 2.1, y: 1.2, color: .black, size: 5, symbol: .circle)
let point6 = PlotPoint(x: 2.8, y: 1.4, color: .black, size: 10, symbol: .triangle)
let point7 = PlotPoint(x: 3.5, y: 3, color: .black, size: 10, symbol: .triangle)
let point8 = PlotPoint(x: 4.2, y: 4.5, color: .black, size: 5, symbol: .circle)
let point9 = PlotPoint(x: 7, y: 6.5, color: .black, size: 5, symbol: .circle)
let point10 = PlotPoint(x: 8.4, y: 7.9, color: .black, size: 10, symbol: .triangle)

let key1 = ChartKeyItem(color: .black, name: "point1", symbol: .circle)
let key2 = ChartKeyItem(color: .black, name: "point2", symbol: .triangle)
let key3 = ChartKeyItem(color: .black, name: "point3", symbol: .circle)
let key4 = ChartKeyItem(color: .black, name: "point4", symbol: .triangle)
let key5 = ChartKeyItem(color: .black, name: "point5", symbol: .circle)
let key6 = ChartKeyItem(color: .black, name: "point6", symbol: .triangle)
let key7 = ChartKeyItem(color: .black, name: "point7", symbol: .triangle)
let key8 = ChartKeyItem(color: .black, name: "point8", symbol: .circle)
let key9 = ChartKeyItem(color: .black, name: "point9", symbol: .circle)
let key10 = ChartKeyItem(color: .black, name: "point10", symbol: .triangle)

let allPoints = [point1, point2, point3, point4, point5, point6, point7, point8, point9, point10]
let allKeys = [key1, key2, key3, key4, key5, key6, key7, key8, key9, key10]

plotView.points.append(contentsOf: allPoints)
keyView.keyItems.append(contentsOf: allKeys)

plotView.yAxisMaximum = 10
plotView.xAxisMaximum = 10
plotView.mode = .pointsAndLines
/*:
[Previous](@previous)  |  page 8 of 9  |  [Next: Wrapping Up](@next)
 */
