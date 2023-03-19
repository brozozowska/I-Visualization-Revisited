/*:
## Pie Charts, Revisited
 
 The new API for pie charts exposes two new types: `PieWedge` and `PieChartView`.
 
 The `PieWedge` struct gives you several ways to create visual effects with pie charts. It has the following properties:
 
- `proportion`: The percentage of the pie occupied by the wedge, expressed as a `Double`.
- `color`: The color of the wedge. You can use any one of the following values. (Remember to use a period before the color name. If you don't, Swift will return a "use of unresolved identifier" error.)
    - .black
    - .blue
    - .brown
    - .cyan
    - .darkGray
    - .gray
    - .green
    - .lightGray
    - .magenta
    - .orange
    - .purple
    - .red
    - .yellow
- `scale`: The radius of the wedge relative to the pie's natural radius, expressed as a `Double`. Less than `1.0` will make the wedge smaller than normal-sized wedges, and greater than `1.0` will make the wedge larger (typically the desired effect).
- `offset`: The distance a wedge lies from the center of the pie, relative to the size of the wedge. An offset of 0 keeps the wedge at the center of the pie. An offset of 1.0 moves the center point of the wedge to where its outer edge would be.
 
 The `makePieChart()` function creates an instance of a `PieChartView` named `pieChartView`. `PieChartView` has one property named `wedges`, which is an array of `PieWedge` instances. Assign an array of wedges to this property, or use the `append()` method of `Array` to add them one at a time.
 
### Keys
 
 `makePieChart()` also creates a key named `keyView`. It's an instance of `ChartKeyView`, which has a `keyItems` property. `keyItems` is an array of `ChartKeyItem` instances. `ChartKeyItem` has the following properties:
 
- `color`: The color swatch displayed in the key. You can use any of the following values.
    - .black
    - .blue
    - .brown
    - .cyan
    - .darkGray
    - .gray
    - .green
    - .lightGray
    - .magenta
    - .orange
    - .purple
    - .red
    - .yellow
- `name`: The text to display expressed as a `String`.

 - callout(Exercise): Create a pie chart using your own data. Play with different `scale` and `offset` properties to see how they affect the look of your chart.
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
/*:
[Previous](@previous)  |  page 2 of 9  |  [Next: Pie Chart Settings](@next)
 */
