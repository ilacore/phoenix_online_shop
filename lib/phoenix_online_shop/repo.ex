defmodule PhoenixOnlineShop.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_online_shop,
    adapter: Ecto.Adapters.Postgres
end
