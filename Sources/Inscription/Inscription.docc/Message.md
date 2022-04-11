# ``Inscription/Message``

## Create Your Own

Message is an object that allows you to hide complex message construction.

```swift
struct CURLMessage: Message {
   let request: URLRequest

   func toString() -> String {
      var cURL = ""
      curl += "curl \\"
      curl += "-X \(request.httpMethod ?? "GET") \\"
      for (name, value) in r.allHTTPHeaderFields ?? [:] {
         cURL += "-H \"\(name): \(value)\" \\"
      }
      curl += "\(request.url!.absolutString)"
      return cURL
   }
}

// Later in code

let message = CURLMessage(request: someRequest)
logger.verbose(message)
```
