# Release Notes

MediaKit honors semantic versioning, with the following strategy:

* Deprecations can happen at any time.
* Deprecations are removed in `major` updates.
* Breaking changes should only occur in `major` updates.
* Breaking changes *can* occur in `minor` and `patch` updates, if the alternative is worse.

These release notes cover the current major version. See older versions for older release notes.



## 0.4

This version bumps the package to Swift 6.1 and the demo app to iOS 26.

### ✨ New Features

* `MediaItem` is a new models.
* `Paginable` is a new protocol for paginable types.
* `PaginationContext` is a new observable pagination model.

### 💡 Adjustments

* `VideoSplashScreenViewModifier` now avoids redrawing the source view.

### 💥 Breaking Changes

* `VideoSplashScreenViewModifier` no longer has an enabled property.
