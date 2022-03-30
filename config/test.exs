import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :when_you_good, WhenYouGood.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "when_you_good_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :when_you_good, WhenYouGoodWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "zBTtZdmUj3tzkEFjwVXOm3VB4jCdDxzQ19AjDopetIu0+2YFzLCQTH8UqMyD3dVm",
  server: false

# In test we don't send emails.
config :when_you_good, WhenYouGood.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
