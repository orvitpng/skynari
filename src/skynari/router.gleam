import gleam/int
import radish
import skynari/cache
import skynari/routes/v1
import skynari/web
import wisp

pub fn handle(req: wisp.Request, ctx: web.Context) {
  use req <- web.middleware(req)

  case wisp.path_segments(req) {
    ["v1", "hello"] -> v1.hello()

    ["redis_test"] -> {
      let assert Ok(res) = radish.incr(ctx.cache.client, "a", cache.timeout)

      wisp.ok()
      |> wisp.string_body(int.to_string(res))
    }

    _ -> wisp.not_found()
  }
}
