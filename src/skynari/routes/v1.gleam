import wisp

pub fn hello() {
  wisp.ok()
  |> wisp.string_body("Hello, world!")
}
