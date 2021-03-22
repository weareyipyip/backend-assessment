# MusicMeta

## Assignment

Your assignment, should you choose to accept it, is to create a set of RESTful endpoints in a small JSON API for managing the metadata of a music collection. The underlying data should be stored in Postgres. The following endpoints should be created at least:

- GET `/api/albums` - list of albums
- POST `/api/albums` - add a new album
- PUT `/api/albums/:id` - update an album

An `album` does not have to be complicated, just some metadata like `title`, `artist` and `year` should suffice.

That being said, the goal of the assignment is only partly about your hacking skills, but also about your professional software development skills. We would like to receive the results of the assignment as a pull request on this repo, ready for merging and immediate deployment to a live production environment.

## Hacking

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
