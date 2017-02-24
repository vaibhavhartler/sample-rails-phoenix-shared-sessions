# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_app,
  ecto_repos: [PhoenixApp.Repo]

# Configures the endpoint
config :phoenix_app, PhoenixApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dd77dd1d5513c3227e8bc56ae11793dc5e1929c749092e27ba9b7364d0b24c5129a5f8502ac992a2aa7abfc608054de28a49be507a503b524b675b9c54f84363",
  render_errors: [view: PhoenixApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
