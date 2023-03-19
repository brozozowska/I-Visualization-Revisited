/*:
## Pie Chart Settings
 
 `PieChartView` also has a property that you can use to tweak its look.
 
- `labelDisplayStyle`: How labels are displayed, expressed as a `WedgeLabelDisplayStyle`.
 
 `WedgeLabelDisplayStyle` is an `enum` with the following cases:
 
- `interior`: Labels are displayed inside wedges.
- `exterior`: Labels are displayed just outside wedges.
- `none`: Wedges aren't labeled.

 - callout(Exercise): Experiment with the label styles.
 */
makePieChart()

let wedge1 = PieWedge(proportion: 0.2, color: .red, scale: 1, offset: 0)
let wedge2 = PieWedge(proportion: 0.2, color: .blue, scale: 1, offset: 0)
let wedge3 = PieWedge(proportion: 0.2, color: .magenta, scale: 1.1, offset: 0.1)
let wedge4 = PieWedge(proportion: 0.2, color: .cyan, scale: 1, offset: 0)
let wedge5 = PieWedge(proportion: 0.2, color: .purple, scale: 1, offset: 0)

let key1 = ChartKeyItem(color: .red, name: "wedge1")
let key2 = ChartKeyItem(color: .blue, name: "wedge2")
let key3 = ChartKeyItem(color: .magenta, name: "wedge3")
let key4 = ChartKeyItem(color: .cyan, name: "wedge4")
let key5 = ChartKeyItem(color: .purple, name: "wedge5")

let allWedges = [wedge1, wedge2, wedge3, wedge4, wedge5]
let allKeys = [key1, key2, key3, key4, key5]

pieChartView.wedges.append(contentsOf: allWedges)
keyView.keyItems.append(contentsOf: allKeys)

pieChartView.labelDisplayStyle = .exterior
/*:
[Previous](@previous)  |  page 3 of 9  |  [Next: More about Colors](@next)
 */
