import dot_env/env
import gleam/erlang/process.{type Subject}
import radish/client
import gleam/result.{try}
import radish

pub const timeout = 128

type Client =
  Subject(client.Message)

pub type Cache {
  Cache(client: Client)
}

pub fn new() {
  use host <- try(env.get("REDIS_HOST"))
  use port <- try(env.get_int("REDIS_PORT"))
  use pass <- try(env.get("REDIS_PASSWORD"))
  let assert Ok(client) =
    radish.start(host, port, [radish.Timeout(timeout), radish.Auth(pass)])

  Ok(Cache(client))
}
