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

alias PersonalSite.Repo

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

Enum.each(articles, &PersonalSite.Articles.create_article/1)

jobs = [
  %PersonalSite.Jobs.Job{
    company: "Blitz",
    position: "Backend Engineering Manager",
    start_date: ~D[2018-10-29],
    location: "Los Angeles, CA",
    link: "https://blitz.gg",
    image_url: "https://miro.medium.com/fit/c/336/336/1*61FRSoyKKZm1lUfBSDkCZw.png",
    blurb: """
    As Software Engineering Manager at Blitz, I help the backend team move fast and serve data analytics at scale.

    In my time here availability of our backend system has increased from ~80% to 99.8% as DAUs have quadrupled from 250k to 1M.

    I have also led features such as: an automated statistical analysis of champions to create a continually fresh tier list; a high throughput scraper that ingests 10 million unique daily matches to our database; per-user statistical breakdown of match history to provide personalized insights and coaching.
    """
  },
  %PersonalSite.Jobs.Job{
    company: "Bloom",
    position: "Founder",
    start_date: ~D[2018-02-01],
    end_date: ~D[2018-11-01],
    location: "Los Angeles, CA",
    link: nil,
    image_url: "/images/bloom_icon.jpg",
    blurb: """
    Understand your lifestyle. Guide your growth.

    The goal of Bloom is to better our users with every use. Bloom employs geo-spatial visualizations, statistical analysis and predictive algorithms to help users understand their lifestyle and choose fulfilling activities.

    As technical co-founder of Bloom I have full stack responsibilities from mobile UX implementation to cloud services deployment.

    Architected both server side and mobile codebases including storage / networking on AWS in Python and business logic, data modeling, and user-action binding in Swift for iOS. Utilized agile methodologies (Scrum, Jira) for project management.
    """
  },
  %PersonalSite.Jobs.Job{
    company: "ELFIN Satellite",
    position: "Software Lead",
    start_date: ~D[2015-04-01],
    end_date: ~D[2018-09-01],
    location: "Los Angeles, CA",
    link: "https://elfin.igpp.ucla.edu/",
    image_url: "https://images.squarespace-cdn.com/content/v1/5b3bd5a9266c077a5bdfcafd/1535699276943-VYT7OBU7KS5S4YOICCXD/ke17ZwdGBToddI8pDm48kNVzTC7JclgQLQG-B3yAPEl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k6sq9GEl9ZUDkp1sRKcAyIiqjWyL1axSWYhaCN0J7BEhfMDnMJ6WZQoa7VNlhtUng/ELFIN-space-poster-nologos.jpg?format=2500w",
    blurb: """
    The Electron Losses and Fields Investigation (ELFIN) is a 3U+ CubeSat mission under development by UCLA with funding from JPL and NSF.

    As Software Lead, I was responsible for managing a team of 10 to design, build, and verify both flight software and ground support software for ELFIN.

    Our embedded flight software (C) ran primarily on PIC18s and PIC24s and was responsible for main channel data handling, housekeeping data collection, satellite orientation, and other mission critical tasks. Our ground support software (Python) ran through a graphical PyQT linux application for command handling and remote daemon for controlling our 6 meter earth station antenna.

    Prior to leading the embedded and ground software teams, I worked on Attitude Determination and Control (ADC) to derive and simulate algorithms designed to orient the satellite in space. Original research in this topic is presented below.
    """
  }
]

Enum.each(jobs, &Repo.insert!/1)

books = [
    %PersonalSite.Books.Book{
        title: "Sapiens",
        image_url: "https://uploads-ssl.webflow.com/5dd3f4647030aabbc681ce89/5de2abd8747d4183be702f72_sapiens-history-humankind.jpg",
        link: "https://www.goodreads.com/book/show/23692271-sapiens"
    },
    %PersonalSite.Books.Book{
        title: "The Three-Body Problem",
        image_url: "https://images-na.ssl-images-amazon.com/images/I/919XM42JQlL.jpg",
        link: "https://www.goodreads.com/book/show/20518872-the-three-body-problem"
    },
    %PersonalSite.Books.Book{
        title: "Ring World",
        image_url: "https://onegrandbooks.com/wp-content/uploads/2020/03/Ringworld-900x1389.jpg",
        link: "https://www.goodreads.com/book/show/61179.Ringworld"
    },
    %PersonalSite.Books.Book{
        title: "The Ultimate Hitchhiker's Guide to the Galaxy",
        image_url: "https://static.wixstatic.com/media/2a34d8_1fd1a53fd2d04c5e9c75e9e692122855~mv2.jpg/v1/fill/w_800,h_1273,al_c,q_90/2a34d8_1fd1a53fd2d04c5e9c75e9e692122855~mv2.jpg",
        link: "https://www.goodreads.com/book/show/13.The_Ultimate_Hitchhiker_s_Guide_to_the_Galaxy?ac=1&from_search=true&qid=RTl27tNvQY&rank=2"
    },
    %PersonalSite.Books.Book{
        title: "Dune",
        image_url: "https://i2.wp.com/www.tor.com/wp-content/uploads/2019/07/Dune-cover-1.jpg?type=vertical&ssl=1",
        link: "https://www.goodreads.com/book/show/44767458-dune?from_search=true&from_srp=true&qid=V6TNz2vwDE&rank=1"
    },
    %PersonalSite.Books.Book{
        title: "The Vital Question: Energy, Evolution, and the Origins of Complex Life",
        image_url: "https://images-na.ssl-images-amazon.com/images/I/71EnSe7uFwL.jpg",
        link: "https://www.goodreads.com/book/show/26530386-the-vital-question"
    },
    %PersonalSite.Books.Book{
        title: "Cleopatra: A Life",
        image_url: "https://images-na.ssl-images-amazon.com/images/I/91Jpi00b-vL.jpg",
        link: "https://www.goodreads.com/book/show/7968243-cleopatra"
    },
    %PersonalSite.Books.Book{
        title: "The Autobiography of Benjamin Franklin",
        image_url: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9780743255066/the-autobiography-of-benjamin-franklin-9780743255066_hr.jpg",
        link: "https://www.goodreads.com/book/show/52309.The_Autobiography_of_Benjamin_Franklin?from_search=true&from_srp=true&qid=GuC50ysSX6&rank=1"
    }
]

Enum.each(books, &Repo.insert!/1)
