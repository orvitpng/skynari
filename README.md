# 🌟 skynari

An enhanced Hypixel SkyBlock API for developers and advanced users

## 🚀 Quick Start

### What is skynari?

`skynari` is a RESTful API that interfaces with Hypixel's SkyBlock data. It's
designed to overcome some of the limitations of the official Hypixel API by
providing:

1. **Enhanced Data Presentation**: We reformat and enrich the raw data from
   Hypixel to make it more readable and immediately useful for developers.
2. **No API Key Required**: Unlike the official Hypixel API, `skynari` doesn't
   require users to obtain and manage API keys, making it more accessible for
   quick projects and testing.
3. **Detailed Endpoints**: Our API offers more granular and specific endpoints,
   allowing developers to fetch exactly the data they need without overloading
   their applications with unnecessary information.
4. **Clean JSON Responses**: All our endpoints return well-structured JSON data,
   making it easy to parse and integrate into your projects.

### Getting Started

To start using `skynari`, simply make HTTP requests to our endpoints. No
authentication or API key is required from your end. Here's a simple example
using curl:

```bash
curl https://api.skynari.com/v1/hello
```

## 🛠️ Available Endpoints

| Path          | Description                    |
| ------------- | ------------------------------ |
| `/v1/hello`   | 👋 Simple "Hello, world!"      |
| `/redis_test` | ➕ Global incrementor, db test |

## 🔗 Links

- [GitHub Repository](https://github.com/orvitpng/skynari)
- Documentation: 🏗️ Under construction... Stay tuned!

---

<sub>Made with ❤️ by the skynari team | Not affiliated or endorsed by Hypixel</sub>
