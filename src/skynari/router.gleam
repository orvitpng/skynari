import skynari/routes/v1
import skynari/web.{middleware}
import wisp

pub fn handle(req: wisp.Request) -> wisp.Response {
  use req <- middleware(req)

  case wisp.path_segments(req) {
    ["v1", "hello"] -> v1.hello()

    _ -> wisp.not_found()
  }
}
