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

```
let configWithColors = CCGradientConfiguration(colors: [UIColors])
```
</p>

<p>

2. Same as above, it also takes CCGradient type which coule be "axial","radial", or "conic"

```
let configWithColorsAndType = CCGradientConfiguration(colors: [UIColors],
type: CCGradientType)
```
</p>
<p>

3. Same as above, it also takes locations which indicates area covered by each color. Each number on the array could be between 0 to 1, e.g. a gradient with two colors and locations = [0.25, 0.75] renders a gradient that has two colors, one of them covers 25% of view, the other 75%.

```
let configWithColorsAndTypeAndLocations = CCGradientConfiguration(colors: [UIColor],
type: CCGradientType,
locations: [CGFloat])
```
</p>
<p>

4. Same as above, it takes points array in addition to other parameters. This array needs to have two CGPoints and defined in a unit coordinate space (between [0,0] bottom left, [1,1] top right).
```
let configWithColorsAndTypeAndLocationsAndPoints = CCGradientConfiguration(colors: [UIColor],
type: CCGradientType ,
locations: [CGFloat],
points: [CGPoint])

```
</p>
<p>

5. Uses array of colors, plus `CCGradientDirection` which is one of the followings:
```
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

```
let configWithColorsAndDirection = CCGradientConfiguration(colors: [UIColors], direction: CCGradientDirection)
```
</p>
<p>

6. Same as above, it takes locations array too.

```
let configWithColorsAndDirectionAndLocations = CCGradientConfiguration(colors: [UIColor],
direction: CCGradientDirection,
locations: [CGFloat])
```
</p>

### Adding the view

1. Add a UIView to your scene in storyboard, change its class to be `CCGradientView`. Depending on how you've integrated it, you might need to change `Module` to be `CCGradient`. You can add the view from the code too. Just call `CCGradientView`s `init(frame: CGRect)`. 
2. Set `CCGradientView`'s configuration and implement configuration's method.

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

```
let configuration = CCGradientConfiguration(colors: CCGradientColors.MoonPurple)
```
Again, you can see most of the gradient colors in here: https://uigradients.com

</p>

### Getting creative
You can play with configuration and get things like color wheel.
<p align="center">
<img src="http://i.imgur.com/kq4Cut6.png" alt="color-wheel" width="300" height="300"/>
</p>

```
CCGradientConfiguration(colors: CCGradientColors.ColorWheel,
type: CCGradientType.conic,
points: [CGPoint(x: 0.5, y: 0.5),
CGPoint(x: 1, y: 1)])
```

Or you can mask gradient views to get effects like following.
<p align="center">
<img src="http://i.imgur.com/wYDUEVw.png" alt="pride" width="300"/>
</p>

```
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


## Add to your project

There are 2 ways you can add SDVersion to your project:

### Manual installation


Simply import the 'SDVersion' into your project then import the following in the class you want to use it:
```objective-c
#import "SDVersion.h"
```
In Swift, you need to import in the bridging header the specific library version, not the library wrapper:
```objective-c
#import "SDiOSVersion.h" // Or SDMacVersion.h
```

### Installation with CocoaPods

CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like SDVersion in your projects. See the "[Getting Started](http://guides.cocoapods.org/syntax/podfile.html)" guide for more information.

### Podfile
```ruby
pod 'SDVersion'
```


## iOS

### Available methods
```objective-c
+ (DeviceVersion)deviceVersion;
+ (NSString *)deviceNameForVersion:(DeviceVersion)deviceVersion;
+ (DeviceSize)resolutionSize;
+ (DeviceSize)deviceSize;
+ (NSString *)deviceSizeName:(DeviceSize)deviceSize;
+ (NSString *)deviceNameString;
+ (BOOL)isZoomed;
```
### Targetable models
iPhone4
iPhone4S
iPhone5
iPhone5C
iPhone5S
iPhone6
iPhone6Plus
iPhone6S
iPhone6SPlus
iPhoneSE
iPhone7
iPhone7Plus

iPad1
iPad2
iPadMini
iPad3
iPad4
iPadAir
iPadMini2
iPadAir2
iPadMini3
iPadMini4
iPadPro9Dot7Inch
iPadPro12Dot9Inch
iPad5

iPodTouch1Gen
iPodTouch2Gen
iPodTouch3Gen
iPodTouch4Gen
iPodTouch5Gen
iPodTouch6Gen

Simulator
### Targetable screen sizes
Screen3Dot5inch
Screen4inch
Screen4Dot7inch
Screen5Dot5inch
### Available iOS Version Finder methods
```objective-c
+ (BOOL)versionEqualTo:(NSString *)version;
+ (BOOL)versionGreaterThan:(NSString *)version;
+ (BOOL)versionGreaterThanOrEqualTo:(NSString *)version;
+ (BOOL)versionLessThan:(NSString *)version;
+ (BOOL)versionLessThanOrEqualTo:(NSString *)version;
```       

### Helpers
```objective-c
NSLog(@"%@", [SDVersion deviceVersionName:[SDVersion deviceVersion]]);
/* e.g: Outputs 'iPad Air 2' */

NSLog(@"%@", [SDVersion deviceSizeName:[SDVersion deviceSize]]);
/* e.g: Outputs '4.7 inch' */
```
Or in Swift: 
```swift
let deviceVersionName = SDiOSVersion.deviceVersionName(SDiOSVersion.deviceVersion())
let deviceSizeName = SDiOSVersion.deviceSizeName(SDiOSVersion.deviceSize())    
```

## watchOS

### Available methods
```objective-c
+ (DeviceVersion)deviceVersion;
+ (DeviceSize)deviceSize;
+ (NSString *)deviceName;
```
### Targetable models
Apple Watch 38mm
Apple Watch 42mm
Apple Watch 38mm Series 1
Apple Watch 42mm Series 1
Apple Watch 38mm Series 2
Apple Watch 42mm Series 2

Simulator

### Targetable screen sizes
Screen38mm
Screen42mm

### Available watchOS Version Finder methods
```objective-c
+ (BOOL)versionEqualTo:(NSString *)version;
+ (BOOL)versionGreaterThan:(NSString *)version;
+ (BOOL)versionGreaterThanOrEqualTo:(NSString *)version;
+ (BOOL)versionLessThan:(NSString *)version;
+ (BOOL)versionLessThanOrEqualTo:(NSString *)version;
```      

### Helpers
```objective-c
NSLog(@"%@", [SDVersion deviceVersionName:[SDVersion deviceVersion]]);
/* e.g: Outputs 'Apple Watch 42mm' */

NSLog(@"%@", [SDVersion deviceSizeName:[SDVersion deviceSize]]);
/* e.g: Outputs '42mm' */
```

## tvOS

### Available methods
```objective-c
+ (DeviceVersion)deviceVersion;
+ (NSString *)deviceName;
```
### Targetable models
Apple TV (4th Generation)

Simulator

### Available tvOS Version Finder methods
```objective-c
+ (BOOL)versionEqualTo:(NSString *)version;
+ (BOOL)versionGreaterThan:(NSString *)version;
+ (BOOL)versionGreaterThanOrEqualTo:(NSString *)version;
+ (BOOL)versionLessThan:(NSString *)version;
+ (BOOL)versionLessThanOrEqualTo:(NSString *)version;
```       

### Helpers
```objective-c
NSLog(@"%@", [SDVersion deviceVersionName:[SDVersion deviceVersion]]);
/* e.g: Outputs 'Apple TV (4th Generation)' */
```

## Mac OS
```objective-c
// Check for device model
if ([SDVersion deviceVersion] == DeviceVersionIMac)
NSLog(@"So you have a iMac? 💻");
else if ([SDVersion deviceVersion] == DeviceVersionMacBookPro)
NSLog(@"You're using a MacBook Pro.");

// Check for screen size
if ([SDVersion deviceSize] == Mac27Inch)
NSLog(@"Whoah! You got a big ass 27 inch screen.");
else if ([SDVersion deviceSize] == Mac21Dot5Inch)
NSLog(@"You have a 21.5 inch screen.");

// Check for screen resolution
if ([SDVersion deviceScreenResolution] == DeviceScreenRetina)
NSLog(@"Nice retina screen!");

// Get screen resolution in pixels
NSLog(@"%@", [SDVersion deviceScreenResolutionName:[SDVersion deviceScreenResolution]]);
/* e.g: Outputs '{2880, 1800}' */

// Check OSX Version (pass the minor version)
if([SDVersion versionGreaterThanOrEqualTo:@"11"])
NSLog(@"Looks like you are running OSX 10.11 El Capitan or 🆙.");
```

### Available methods
```objective-c
+ (DeviceVersion)deviceVersion;
+ (NSString *)deviceVersionString;
+ (DeviceSize)deviceSize;
+ (NSSize)deviceScreenResolutionPixelSize;
+ (DeviceScreenResolution)deviceScreenResolution;
```
### Targetable models
DeviceVersionIMac
DeviceVersionMacMini
DeviceVersionMacPro
DeviceVersionMacBook
DeviceVersionMacBookAir
DeviceVersionMacBookPro
DeviceVersionXserve

### Targetable screen sizes
Mac27Inch
Mac24Inch
Mac21Dot5Inch
Mac20Inch
Mac17Inch
Mac15Inch
Mac13Inch
Mac12Inch
Mac11Inch

### Targetable screen resolutions
DeviceScreenRetina,
DeviceScreenNoRetina

### Available OSX Version Finder methods
```objective-c
+ (BOOL)versionEqualTo:(NSString *)version;
+ (BOOL)versionGreaterThan:(NSString *)version;
+ (BOOL)versionGreaterThanOrEqualTo:(NSString *)version;
+ (BOOL)versionLessThan:(NSString *)version;
+ (BOOL)versionLessThanOrEqualTo:(NSString *)version;
/* 'v' must be the minor OS Version. e.g: OSX 10.9 - 'v' is 9 */
```
### Helpers
```objective-c
NSLog(@"%@", [SDVersion deviceSizeName:[SDVersion deviceSize]]);
/* e.g: Outputs '15 inch' */

NSLog(@"%@",[SDVersion deviceScreenResolutionName:[SDVersion deviceScreenResolution]])
/* e.g: Outputs '{2880, 1800}' */
```

## Used by

<p align="center">
<img src="https://dl.dropboxusercontent.com/s/yp3kwu2lobe9pvg/who-uses-sdversion.png?dl=0" alt="Who uses SDVersion">
</p>

## License
Usage is provided under the [MIT License](http://opensource.org/licenses/mit-license.php). See LICENSE for the full details.
