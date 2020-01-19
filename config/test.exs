use Mix.Config

# Configure your database
config :phx_live_view_052_nested_liveview, PhxLiveView052NestedLiveview.Repo,
  username: "postgres",
  password: "postgres",
  database: "phx_live_view_052_nested_liveview_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_live_view_052_nested_liveview, PhxLiveView052NestedLiveviewWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
