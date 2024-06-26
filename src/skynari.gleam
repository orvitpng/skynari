import dot_env
import gleam/erlang/process.{sleep_forever}
import mist
import skynari/cache.{new}
import skynari/router.{handle}
import skynari/web.{Context}
import wisp
import gleam/result.{try}

pub fn main() {
  wisp.configure_logger()
  dot_env.new()
  |> dot_env.load

  use cache <- try(new())
  let assert Ok(_) =
    wisp.mist_handler(handle(_, Context(cache)), wisp.random_string(64))
    |> mist.new
    |> mist.port(8080)
    |> mist.start_http

  Ok(sleep_forever())
}
