# ``Inscription/Logger``

## Usage

See examples how to use loggers. See a list of instance methods or ``Level`` to know available
logging levels.

##### PrintLogger

```swift
let logger = PrintLogger()
logger.verbose("message")
```

A ``PrintLogger`` can be instantiated with customized logging level configuration. This is useful if
you want to log message at different levels in debug and production environments. 

```swift
#if DEBUG
let logger = PrintLogger(levelConfiguration: .verbose)
#else
let logger = PrintLogger(levelConfiguration: .error)
#endif
```

##### CompositeLogger

``CompositeLogger`` may be useful if you need to log messages to several destination at once.

```swift
let logger = CompositeLogger(loggers: [PrintLogger(), CustomLogger()])
logger.debug("message")
```
## Create Your Own

You are allowed to create you own logger. All you need is to conform an object to this protocol and
implement `log` function.

```swift
final class MyCustomLogger: Logger {
   func log(_ level: Level, _ message: Message, in file: String, at line: UInt) {
      // Logging here
   }
}
```
