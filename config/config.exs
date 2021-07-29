# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_online_shop,
  ecto_repos: [PhoenixOnlineShop.Repo]

# Configures the endpoint
config :phoenix_online_shop, PhoenixOnlineShopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7td8Hw/piGBvI0cuOZFEa3TUc6COMO05AF9Ng8jt24ljc3ojS+lXeLKZWibCCR+y",
  render_errors: [view: PhoenixOnlineShopWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixOnlineShop.PubSub,
  live_view: [signing_salt: "eEeI/Gco"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
