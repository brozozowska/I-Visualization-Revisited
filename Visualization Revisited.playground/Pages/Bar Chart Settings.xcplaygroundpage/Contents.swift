/*:
## Bar Chart Settings
 
 You also have three new `enum`s that control the look of horizontal axis labels on your bar charts. They are:
 
 `AxisLabelGravity`
- `top`: Axis labels will align to the top of the axis label area.
- `bottom`: Axis labels will align to the bottom of the axis label area.
 
 `AxisLabelAttachment`
- `beginning`: Axis labels will attach at the beginning of the text.
- `end`: Axis labels will attach at the end of the text.
 
 `AxisLabelDistributionStyle`
- `endToEnd`: Axis labels will be distributed evenly, with the first and last labels aligning with the beginning and end of the axis, respectively.
- `centeredIntervals`: Axis labels will be distributed evenly with equal amounts of space around them.
 
 Three new properties of `BarChartView` let you control the look of the series labels:
 
- `seriesLabelGravity`, of type `AxisLabelGravity`
- `seriesLabelAttachment`, of type `AxisLabelAttachment`
- `seriesLabelDistributionStyle`, of type `AxisLabelDistributionStyle`

 - callout(Exercise): Experiment with the horizontal axis labels.
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

barChartView.yAxisMaximum = 10
barChartView.seriesLabels = ["bar1", "bar2", "bar3", "bar4", "bar5"]

barChartView.seriesLabelGravity = .top
barChartView.seriesLabelAttachment = .end
barChartView.seriesLabelDistributionStyle = .centeredIntervals
/*:
[Previous](@previous)  |  page 6 of 9  |  [Next: Plots, Revisited](@next)
 */
