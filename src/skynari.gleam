import dot_env
import gleam/erlang/process.{sleep_forever}
import mist
import skynari/router.{handle}
import wisp

pub fn main() {
  dot_env.new()
  |> dot_env.load

  wisp.configure_logger()
  let assert Ok(_) =
    wisp.mist_handler(handle, wisp.random_string(64))
    |> mist.new
    |> mist.port(8080)
    |> mist.start_http

  sleep_forever()
}
