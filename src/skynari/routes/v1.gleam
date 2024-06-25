import wisp

pub fn hello() -> wisp.Response {
  wisp.ok()
  |> wisp.string_body("Hello, world!")
}
