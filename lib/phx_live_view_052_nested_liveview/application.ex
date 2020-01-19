defmodule PhxLiveView052NestedLiveview.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      PhxLiveView052NestedLiveview.Repo,
      # Start the endpoint when the application starts
      PhxLiveView052NestedLiveviewWeb.Endpoint
      # Starts a worker by calling: PhxLiveView052NestedLiveview.Worker.start_link(arg)
      # {PhxLiveView052NestedLiveview.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhxLiveView052NestedLiveview.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhxLiveView052NestedLiveviewWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
