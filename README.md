# MusicMeta

You can hack at this code with a local Erlang/Elixir installation or use a VS Code devcontainer which relies only on Docker Compose being available. If this is your first rodeo, the latter is highly recommended. Just open the project in Visual Studio Code and click "yes" when prompted to use a dev container.

## Useful commands

These commands are also available as tasks in [.vscode/tasks.json](.vscode/tasks.json).

Install dependencies:
`mix deps.get`

Apply DB migrations:
`mix ecto.migrate`

Apply DB seeds:
`mix run priv/repo/seeds.exs`

Run the app:
`mix phx.server`

Run an interactive iEx shell (with local deps loaded):
`iex -S mix`

Run the app with an attached iEx shell (recommended):
`iex -S mix phx.server`
