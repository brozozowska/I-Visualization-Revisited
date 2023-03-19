/*:
## Bar Charts, Revisited
 
 In the first visualization playground, you used simple functions to create bar charts. In this playground, you'll have more control over the size and color of the bars.
 
 The new API exposes an instance of `BarChartView` named `barChart`. There's also a `ChartBar` struct which is used to specify the bars themselves. `ChartBar` has the following properties:
 
- `length`: The size of the bar, expressed as a `Double`.
- `color`: The color of the bar, expressed as a `Color`.

 `BarChartView` has several properties:
 
- `bars`: An `Array` of `ChartBar`s.
- `yAxisMinimum`: The minimum value of the Y axis, expressed as a `Double`.
- `yAxisMaximum`: The maximum value of the Y axis, expressed as a `Double`.
- `seriesLabels`: An `Array` of `String`s to display labels along the X axis with equal spacing.

 As with the pie chart, you'll also get an instance of `ChartKeyView` called `keyView`.

 - callout(Exercise): Create a bar chart using your own data.
 */
makeBarChart()

let bar1 = ChartBar(length: 8.1, color: Color(red: 1, green: 0.4, blue: 0.1, alpha: 1))
let bar2 = ChartBar(length: 6.4, color: Color(red: 0.1, green: 0.4, blue: 1, alpha: 1))
let bar3 = ChartBar(length: 4.9, color: Color(red: 0.5, green: 0.9, blue: 0.1, alpha: 1))
let bar4 = ChartBar(length: 2.1, color: Color(red: 0.2, green: 0.3, blue: 0.5, alpha: 1))
let bar5 = ChartBar(length: 7.3, color: Color(red: 0.7, green: 0.2, blue: 0.3, alpha: 1))

let key1 = ChartKeyItem(color: Color(red: 1, green: 0.4, blue: 0.1, alpha: 1), name: "bar1")
let key2 = ChartKeyItem(color: Color(red: 0.1, green: 0.4, blue: 1, alpha: 1), name: "bar2")
let key3 = ChartKeyItem(color: Color(red: 0.5, green: 0.9, blue: 0.1, alpha: 1), name: "bar3")
let key4 = ChartKeyItem(color: Color(red: 0.2, green: 0.3, blue: 0.5, alpha: 1), name: "bar4")
let key5 = ChartKeyItem(color: Color(red: 0.7, green: 0.2, blue: 0.3, alpha: 1), name: "bar5")

let allBars = [bar1, bar2, bar3, bar4, bar5]
let allKeys = [key1, key2, key3, key4, key5]

barChartView.bars.append(contentsOf: allBars)
keyView.keyItems.append(contentsOf: allKeys)
//:  - callout(Challenge): Recreate the `addBar(withLength:color:)` and `setYAxis(minimum:maximum:)` functions from the first visualization playground.
barChartView.yAxisMaximum = 10
barChartView.seriesLabels = ["bar1", "bar2", "bar3", "bar4", "bar5"]
/*:
[Previous](@previous)  |  page 5 of 9  |  [Next: Bar Chart Settings](@next)
 */
