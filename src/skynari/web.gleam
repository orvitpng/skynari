import skynari/cache
import wisp

pub fn middleware(req: wisp.Request, handle: fn(wisp.Request) -> wisp.Response) {
  let req = wisp.method_override(req)
  use <- wisp.log_request(req)

  handle(req)
}

pub type Context {
  Context(cache: cache.Cache)
}
