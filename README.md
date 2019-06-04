<p align="center">
<img src="https://i.imgur.com/sZqOxs1.png" alt="CCGradient"/>
</p>

Lightweight, easy to use Gradient view backed by GPU powered CoreAnimation's Layer, with [380+  built-in gradient colors, mostly ported from uigradients.](https://uigradients.com/)


## Usage

### Create configuration

`CCGradientView` uses `CCGradientViewConfiguration` to configure
- Colors.
- Type (`axial`, `conic`, `radial`).
- Locations: location of each color in gradient.
- Points: starting and ending point at which each color starts and ends.

You can create configuration object using one the following ways:
<p>

1. Only uses colors, it'll automatically adjust "Locations" and "Points" based on number of colors. Default type will be axial

```swift
let configWithColors = CCGradientConfiguration(colors: [UIColors])
```
</p>

<p>

2. Same as above, it also takes CCGradient type which coule be "axial","radial", or "conic"

```swift
let configWithColorsAndType = CCGradientConfiguration(colors: [UIColors],
                                                      type: CCGradientType)
```
</p>
<p>

3. Same as above, it also takes locations which indicates area covered by each color. Each number on the array could be between 0 to 1, e.g. a gradient with two colors and locations = [0.25, 0.75] renders a gradient that has two colors, one of them covers 25% of view, the other 75%.

```swift
let configWithColorsAndTypeAndLocations = CCGradientConfiguration(colors: [UIColor],
                                                                  type: CCGradientType,
                                                                  locations: [CGFloat])
```
</p>
<p>

4. Same as above, it takes points array in addition to other parameters. This array needs to have two CGPoints and defined in a unit coordinate space (between [0,0] bottom left, [1,1] top right).
```swift
let configWithColorsAndTypeAndLocationsAndPoints = CCGradientConfiguration(colors: [UIColor],
                                                                           type: CCGradientType ,
                                                                           locations: [CGFloat],
                                                                           points: [CGPoint])

```
</p>
<p>

5. Uses array of colors, plus `CCGradientDirection` which is one of the followings:
```swift
public enum CCGradientDirection {
    case topToBottom
    case leftToRight
    case rightToLeft
    case bottomToTop
    case growFromCenter
    case shrinkToCenter
}
``` 
`topToBottom`, `case leftToRight`, `rightToLeft`, `bottomToTop` use `axial` type, `growFromCenter` and `shrinkToCenter` use `radial`.

```swift
let configWithColorsAndDirection = CCGradientConfiguration(colors: [UIColors], 
                                                           direction: CCGradientDirection)
```
</p>
<p>

6. Same as above, it takes locations array too.

```swift
let configWithColorsAndDirectionAndLocations = CCGradientConfiguration(colors: [UIColor],
                                                                       direction: CCGradientDirection,
                                                                       locations: [CGFloat])
```
</p>

### Adding the view

1. Add a UIView to your scene in storyboard, change its class to be `CCGradientView`. Depending on how you've integrated it, you might need to change `Module` to be `CCGradient`. You can add the view from the code too. Just call `CCGradientView`s `init(frame: CGRect)`. 
2. Set `CCGradientView`'s configuration and implement the only configuration's method.
<p>

```swift
func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration
```
</p>


Here is a complete example.

```swift
class ViewController: UIViewController {
    @IBOutlet weak var gradientView: CCGradientView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //set configuration to be self
        gradientView.configuration = self
    }
}
extension ViewController: CCGradientViewConfiguration {    
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration {
        return CCGradientConfiguration(colors: CCGradientColors.Instagram,
                                       direction: .rightToLeft)
    }
}
```
<p>

### Ready to use Gradient colors
CCGradient has 380+ ready to use gradients built in. They are ported from [https://github.com/Ghosh/uiGradients](https://github.com/Ghosh/uiGradients).
You can see most of the colors in here: [https://uigradients.com](https://uigradients.com)
Credit to [Ghosh](https://github.com/Ghosh)

To use one of the ready gradient colors, you only need to [create a configuration](#create-configuration). For the color array you need to pass in one of the ready colors from `CCGradientColors` 

```swift
let configuration = CCGradientConfiguration(colors: CCGradientColors.MoonPurple)
```
Again, you can see most of the gradient colors in here: https://uigradients.com

</p>

### Getting creative
You can play with configuration and get things like color wheel.
<p align="center">
<img src="http://i.imgur.com/kq4Cut6.png" alt="color-wheel" width="300" height="300"/>
</p>

```swift
CCGradientConfiguration(colors: CCGradientColors.ColorWheel,
                        type: CCGradientType.conic,
                        points: [CGPoint(x: 0.5, y: 0.5),
                        CGPoint(x: 1, y: 1)])
```

Or you can mask gradient views to get effects like following.
<p align="center">
<img src="http://i.imgur.com/wYDUEVw.png" alt="pride" width="300"/>
</p>

```swift
class ViewController: UIViewController {
    @IBOutlet weak var gradientView: CCGradientView!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientView.mask = label
        gradientView.configuration = self
    }
}

extension ViewController: CCGradientViewConfiguration {
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration {
        return CCGradientConfiguration(colors: CCGradientColors.LGBT)
    }
}
```


## Installation

### Manual
<p>
You can drag and drop necessary files under `Sources` folder into your project.

- `CCGradientView.swift` - Mandatory
- `CCGradientConfiguration.swift` - Mandatory
- `CCGradientColors.swift` - Optional, it contains all builtin gradient colors
- `CCColors.swift` - Optional, it contains CSS color names and is used in `CCGradientColors.swift`, so if you use `CCGradientColors.swift` you need this file too.
</p>

### Cocoapods
<p>

```

</p>

## License

[MIT License](http://opensource.org/licenses/mit-license.php).
