# Build Swiftly

![Build Swiftly](/BuildSwiftly.png)

![Version Badge](https://img.shields.io/badge/Swift%20Package%20Manager-v0.0.1-blue)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Build Status](https://github.com/danielfarrell-transact/BuildSwiftly/actions/workflows/nightly.yml/badge.svg)

Build Swiftly is a Swift Package full of custom, pre-built Swift UI components to enable even faster development of great looking iOS apps.

## Swift Package Manager 

Add `Build Swiftly` as a Swift Package in Xcode:

`Xcode` > `File` > `Add Packages` >
`https://github.com/danielfarrell-transact/BuildSwiftly` > `Up to Next Major Version`

## Usage

- `BSRoundedButton()`

```
        BSRoundedButton(
            text: "BS Rounded Button",
            tintColor: .white,
            backgroundColor: .blue
        ) {
            print("BS Rounded Button Pressed!")
        }
```

- `BSRoundedButtonIcon()`

```            BSRoundedButtonIcon(
                text: "BS Rounded Button Icon",
                icon: Image(systemName: "info.circle"),
                tintColor: .white,
                backgroundColor: .blue
            ) {
                print("BS Rounded Button Icon Pressed!")
            }
```

## Build Status ✅

GitHub Actions runs the Build Swiftly tests nightly, here is the latest build status:

![Build Status](https://github.com/danielfarrell-transact/BuildSwiftly/actions/workflows/nightly.yml/badge.svg)

## Contributors

<a href="https://github.com/danielfarrell-transact"><img src="https://avatars.githubusercontent.com/danielfarrell-transact" width="50" height="50" alt="Daniel Farrell"/></a> <a href="https://github.com/SpoonTheGreater"><img src="https://avatars.githubusercontent.com/SpoonTheGreater" width="50" height="50" alt="James Sadlier"/></a>

## Changelog 

Check out whats new in the latest release: [Changelog](CHANGELOG.md)

## MIT License

```
Copyright (c) 2022 Daniel Farrell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
