import skynari/routes
import skynari/web
import wisp

pub fn handle(req: wisp.Request, ctx: web.Context) -> wisp.Response {
  use req <- web.middleware(req)

  case wisp.path_segments(req) {
    [] -> routes.root(ctx.readme)

    _ -> wisp.not_found()
  }
}
