import skynari/routes/v1
import skynari/web
import wisp

pub fn handle(req: wisp.Request, ctx: web.Context) -> wisp.Response {
  use req <- web.middleware(req)

  case wisp.path_segments(req) {
    [] ->
      wisp.ok()
      |> wisp.string_body(ctx.readme)

    ["v1", "hello"] -> v1.hello()

    _ -> wisp.not_found()
  }
}
