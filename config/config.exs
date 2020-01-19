# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_live_view_052_nested_liveview,
  ecto_repos: [PhxLiveView052NestedLiveview.Repo]

# Configures the endpoint
config :phx_live_view_052_nested_liveview, PhxLiveView052NestedLiveviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oBAFgVeYjYC2Jg5jQ5Zg9X8Jm73PCbhTYXSqHl+vS5NQvfMvPl4jWU49YbsHk6lx",
  render_errors: [view: PhxLiveView052NestedLiveviewWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxLiveView052NestedLiveview.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "iJ8BW+7mZjIXKdE3oeDWejTznn13K4nt"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
