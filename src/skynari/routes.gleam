import wisp

pub fn root(readme: String) -> wisp.Response {
  wisp.ok()
  |> wisp.string_body(readme)
}
