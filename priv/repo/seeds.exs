# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PersonalSite.Repo.insert!(%PersonalSite.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PersonalSite.Articles

articles = [
  %{
    title: "Tech Giant Invests Huge Money to Build a Computer Out of Science Fiction",
    image_url: "http://mrmrs.github.io/photos/cpu.jpg",
    body: """
    The tech giant says it is ready to begin planning a quantum
    computer, a powerful cpu machine that relies on subatomic particles instead
    of transistors.
    """
  },
  %{
    title: "Warehouse Prices Are Fast on the Rise",
    image_url: "http://mrmrs.github.io/photos/warehouse.jpg",
    body: """
    A warehouse is a commercial building for storage of goods.
    Warehouses are used by manufacturers, importers, exporters,
    wholesalers, transport businesses, customs, etc. They are
    usually large plain buildings in industrial areas of cities,
    towns and villages.
    """
  },
  %{
    title: "Giant Whale Invests Huge Money to Build a Computer Out of Plankton",
    image_url: "http://mrmrs.github.io/photos/whale.jpg",
    body: """
    Whale is the common name for a widely distributed and diverse
    group of fully aquatic placental marine mammals. They are an
    informal grouping within the infraorder Cetacea, usually
    excluding dolphins and porpoises.
    """
  }
]

Enum.each(articles, &Articles.create_article/1)
