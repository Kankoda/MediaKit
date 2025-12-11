<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/kankoda/MediaKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-6.1-orange.svg" alt="Swift 6.1" />
    <a href="https://kankoda.github.io/MediaKit"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <a href="https://kankoda.com/mediakit"><img src="https://img.shields.io/badge/license-commercial-yellow.svg" alt="Pricing" /></a>
</p>


# MediaKit

MediaKit lets you create amazing streaming media apps in Swift and SwiftUI. 

<p align="center">
    <img src="https://github.com/kankoda/VideoKit/releases/download/0.1/VideoKit-Demo-Compressed.gif" alt="Demo Gif" width="300" />
</p>

MediaKit has a ``VideoPlayer`` and lets you add a video splash screen to present when your app launches. It has views, sample data, Chromecast support, and much more.



## Pricing

MediaKit requires a license to be used. It's free to start using, and affordable to scale. You can sign up for a commercial or free license from the [MediaKit website][Website].



## Installation

MediaKit can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/MediaKit.git
```

> [!IMPORTANT]  
> For remote video playback to work in macOS Catalyst, you must enable "Outgoing Connections (Client)" under "Signing & Capabilities > App Sandbox" and enable "App Transport Security Settings > Allow Arbitrary Loads" (for more security, specify allowed domains) under the app's "Info" configuration.



## Supported Platforms

MediaKit supports iOS 15, macOS Catalyst 12, tvOS 15, watchOS 8, and visionOS 1.



## Features

MediaKit supports a bunch of video-related features:

* 🎬 Video Player - A custom video player view.
* ✨ Video Splash Screen - A video-based splash screen that plays when your app launches.
* 🖼️ Views - A bunch of video-related views and modifiers.
* 🗞️ Pagination - Built-in pagination support.
* 🍬 Sample Data - Free samples to use while developing.

MediaKit also includes Chromecast support:

* 📽️ Chromecast SDK - Google Cast dependency.

See the [documentation][Documentation] for more information.



## Getting Started

To add video content to your app, just add a ``VideoPlayer`` with a URL to the content you want to play:

```swift
struct ContentView: View {

    @State var videoTime = TimeInterval.zero

    var body: some View {
        VideoPlayer(
            videoURL: VideoPlayer.sampleVideoURL,
            time: $videoTime,
            configuration: .init(autoPlay: false),
            controllerConfiguration: { controller in
                controller.showsPlaybackControls = false
            },
            didPlayToEndAction: { print("The end") }
        )
        .aspectRatio(16/9, contentMode: .fit)
    }
}
```

You can inject a time binding which lets you persist the player time and resume playback, inject custom player and controller configurations, and a `didPlayToEndAction` to trigger when playback ends.  

To add video splash screen, just apply a ``.videoSplashScreen(videoURL:configuration:)`` to your root view:

```swift
struct ContentView: View {

    var body: some View {
        Text("Hello, world")
            .videoSplashScreen(
                videoURL: VideoPlayer.sampleVideoURL,
                configuration: .init(
                    dismissAnimation: .linear(duration: 2),
                    maxDisplayDuration: 2
                ),
                videoPlayerView: { videoPlayer in
                    Color.red
                    videoPlayer.aspectRatio(contentMode: .fit)
                }
            )
    }
}
```

You can pass in a configuration to customize the splash screen, and customize the `videoPlayerView`.

See the [getting-started guide][Getting-Started] for more information.



## Documentation

The online [documentation][Documentation] has more information, articles, code examples, etc.



## Demo Application

The `Demo` folder has a demo app that lets you explore the library.



## Contact

MediaKit is property of Kankoda:

* [E-mail][Email]
* [Website][Website]
* [Bluesky][Bluesky]
* [Mastodon][Mastodon]

Reach out if you have any questions, want to sign up for a license, or need help in any way.



## License

MediaKit is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@kankoda.com
[Website]: https://kankoda.com/licensekit
[GitHub]: https://github.com/kankoda

[Bluesky]: https://bsky.app/profile/kankoda.bsky.social
[Twitter]: https://twitter.com/kankodahq
[Mastodon]: https://mastodon.social/@kankoda

[Documentation]: https://kankoda.github.io/MediaKit
[Getting-Started]: https://kankoda.github.io/MediaKit/documentation/mediakit/getting-started
[License]: https://github.com/kankoda/MediaKit/blob/main/LICENSE
