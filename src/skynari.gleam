import dot_env
import gleam/erlang/process.{sleep_forever}
import mist
import skynari/cache.{new}
import skynari/router.{handle}
import skynari/web.{Context}
import wisp

pub fn main() {
  wisp.configure_logger()
  dot_env.new()
  |> dot_env.load

  let assert Ok(cache) = new()
  let assert Ok(_) =
    wisp.mist_handler(handle(_, Context(cache)), wisp.random_string(64))
    |> mist.new
    |> mist.port(8080)
    |> mist.start_http

  sleep_forever()
}
