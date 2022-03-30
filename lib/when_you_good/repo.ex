defmodule WhenYouGood.Repo do
  use Ecto.Repo,
    otp_app: :when_you_good,
    adapter: Ecto.Adapters.Postgres
end
