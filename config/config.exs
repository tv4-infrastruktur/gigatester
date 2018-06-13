# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gigatester,
  ecto_repos: [Gigatester.Repo]

# Configures the endpoint
config :gigatester, GigatesterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HCO6N7QMAH1Xyt8UY3ui8Z0BAyI/Gnoyc5um1Gfr7Ml9UO93ezR7YZ+8XmIrSZ+x",
  render_errors: [view: GigatesterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gigatester.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
