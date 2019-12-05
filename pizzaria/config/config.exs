import Config

config :pizzaria, Pizzaria.Repo,
  database: "pizzaria_repo",
  username: "postgres",
  password: "admin",
  hostname: "localhost"

config :pizzaria, ecto_repos: [Pizzaria.Repo]
