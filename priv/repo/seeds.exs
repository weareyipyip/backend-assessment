# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MusicMeta.Repo.insert!(%MusicMeta.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias MusicMeta.Repo
alias MusicMeta.Music.Album

Repo.insert! %Album{
  title: "Never Mind",
  artist: "Nirvana",
  year: "1991"
}
Repo.insert! %Album{
  title: "KOD",
  artist: "J. Cole",
  year: "2018"
}
Repo.insert! %Album{
  title: "The Wall",
  artist: "Pink Floyd",
  year: "1979"
}
