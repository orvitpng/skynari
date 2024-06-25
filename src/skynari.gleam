import gleam/erlang/process.{sleep_forever}
import gleam/result.{map}
import mist
import simplifile.{read}
import skynari/router.{handle}
import skynari/web.{Context}
import wisp

pub fn main() {
  let assert Ok(ctx) =
    read(from: "README.txt")
    |> map(Context)

  wisp.configure_logger()
  let assert Ok(_) =
    wisp.mist_handler(handle(_, ctx), wisp.random_string(64))
    |> mist.new
    |> mist.port(8080)
    |> mist.start_http

  sleep_forever()
}
