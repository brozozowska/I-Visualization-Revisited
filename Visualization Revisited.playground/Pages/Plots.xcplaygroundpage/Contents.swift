/*:
## Plots, Revisited
 
 This version of the API also exposes some new types to help you create better scatter plots. `PlotView` displays your plot data. `makePlot()` creates an instance named `plotView`. The plot data is a series of `PlotPoint` instances, stored as an array in the `points` property.
 
 `PlotView` has the following properties:
 
- `points`: An `Array` of `PlotPoint`s.
- `yAxisMinimum`: The minimum value of the Y axis, expressed as a `Double`.
- `yAxisMaximum`: The maximum value of the Y axis, expressed as a `Double`.
- `xAxisMinimum`: The minimum value of the X axis, expressed as a `Double`.
- `xAxisMaximum`: The maximum value of the X axis, expressed as a `Double`.

 `PlotPoint` has the following properties:
 
- `x`: The X coordinate of the point, expressed as a `Double`.
- `y`: The Y coordinate of the point, expressed as a `Double`.
- `color`: The color of the point, expressed as a `Color`.
- `size`: The size of the point, expressed as a `Double`.
 
 You can use several initializers to create a `PlotPoint` instance.
 
 The color will default to `.black` and the size to 5:\
 `init(x:y:f)`
 
The size will default to 5:\
`init(x:y:color:)`
 
 You specify all properties:\
`init(x:y:color:size:)`

 
 As with pie charts and bar charts, you'll also get an instance of `ChartKeyView` called `keyView`.

 - callout(Exercise): Create a plot using your own data.
 */
makePlot()

let point1 = PlotPoint(x: 1, y: 0.9, color: .black, size: 5)
let point2 = PlotPoint(x: 1.1, y: 1.1, color: .black, size: 5)
let point3 = PlotPoint(x: 1.8, y: 1.05, color: .black, size: 5)
let point4 = PlotPoint(x: 2.1, y: 0.9, color: .black, size: 5)
let point5 = PlotPoint(x: 2.1, y: 1.2, color: .black, size: 5)
let point6 = PlotPoint(x: 2.8, y: 1.4, color: .black, size: 5)
let point7 = PlotPoint(x: 3.5, y: 3, color: .black, size: 5)
let point8 = PlotPoint(x: 4.2, y: 4.5, color: .black, size: 5)
let point9 = PlotPoint(x: 7, y: 6.5, color: .black, size: 5)
let point10 = PlotPoint(x: 8.4, y: 7.9, color: .black, size: 5)

let key1 = ChartKeyItem(color: .black, name: "point1")
let key2 = ChartKeyItem(color: .black, name: "point2")
let key3 = ChartKeyItem(color: .black, name: "point3")
let key4 = ChartKeyItem(color: .black, name: "point4")
let key5 = ChartKeyItem(color: .black, name: "point5")
let key6 = ChartKeyItem(color: .black, name: "point6")
let key7 = ChartKeyItem(color: .black, name: "point7")
let key8 = ChartKeyItem(color: .black, name: "point8")
let key9 = ChartKeyItem(color: .black, name: "point9")
let key10 = ChartKeyItem(color: .black, name: "point10")

let allPoints = [point1, point2, point3, point4, point5, point6, point7, point8, point9, point10]
let allKeys = [key1, key2, key3, key4, key5, key6, key7, key8, key9, key10]

plotView.points.append(contentsOf: allPoints)
keyView.keyItems.append(contentsOf: allKeys)

plotView.yAxisMaximum = 10
plotView.xAxisMaximum = 10
//:  - callout(Challenge): Recreate the `addPointAt(x:y:color:)`, `setXAxis(minimum:maximum:)`, and `setYAxis(minimum:maximum:)` functions from the first visualization playground.

/*:
[Previous](@previous)  |  page 7 of 9  |  [Next: Plot Settings](@next)
 */
