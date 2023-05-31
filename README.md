# WHGetBundle

[![CI Status](https://img.shields.io/travis/wanghonggit/WHGetBundle.svg?style=flat)](https://travis-ci.org/wanghonggit/WHGetBundle)
[![Version](https://img.shields.io/cocoapods/v/WHGetBundle.svg?style=flat)](https://cocoapods.org/pods/WHGetBundle)
[![License](https://img.shields.io/cocoapods/l/WHGetBundle.svg?style=flat)](https://cocoapods.org/pods/WHGetBundle)
[![Platform](https://img.shields.io/cocoapods/p/WHGetBundle.svg?style=flat)](https://cocoapods.org/pods/WHGetBundle)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

通过 [CocoaPods](https://cocoapods.org)安装. 在 Podfile中加入以下代码:

```ruby
pod 'WHGetBundle'
```
以下为使用示例：
```ruby
let bundle = WHGetBundle.wh_getBundleWith(bundleName: "bundleName")
let image = bundle?.getImageWith(imageName: "imageName")
```

## Author

wanghonggit, 995406924@qq.com

## License

WHGetBundle is available under the MIT license. See the LICENSE file for more info.
