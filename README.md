# RKKeepAlive

[![CI Status](https://img.shields.io/travis/yuan/RKKeepAlive.svg?style=flat)](https://travis-ci.org/yuan/RKKeepAlive)
[![Version](https://img.shields.io/cocoapods/v/RKKeepAlive.svg?style=flat)](https://cocoapods.org/pods/RKKeepAlive)
[![License](https://img.shields.io/cocoapods/l/RKKeepAlive.svg?style=flat)](https://cocoapods.org/pods/RKKeepAlive)
[![Platform](https://img.shields.io/cocoapods/p/RKKeepAlive.svg?style=flat)](https://cocoapods.org/pods/RKKeepAlive)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

RKKeepAlive is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RKKeepAlive', '~> 0.1.15'
```

```ruby
// Make it work

#import <RKKeepAlive/RKKeepAlive.h>

[[RKKeepAlive sharedKeepInstance] startAppLifeCycleMonitor];

// show logs
[[RKKeepAlive sharedKeepInstance] showLog:YES];

```

## Author

yuan920, yzyuan920@163.com

## License

RKKeepAlive is available under the MIT license. See the LICENSE file for more info.
