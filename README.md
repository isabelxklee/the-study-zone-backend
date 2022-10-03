# The Study Zone Backend 🛠

[Link to React app](https://github.com/isabelxklee/the-study-zone)

The Study Zone is a place for me to document the algorithms that I've solved and the different solutions I've come up with.

---

## Getting started

Install Homebrew.

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install RVM (Ruby Version Manager).

```bash
$ gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

Install Ruby using RVM.

```bash
$ \curl -sSL https://get.rvm.io | bash -s stable --ruby
```

Install Rails.

```bash
$ \curl -sSL https://get.rvm.io | bash -s stable --rails
```

Clone this repo and `cd` into the correct directory.

Install all dependencies.

```bash
$ bundle install
```

Create a database, migrations, and seed data.

```bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Open the Rails console and test out the data.

```bash
$ rails c
```

Run the Rails server.

```bash
$ rails s
```

---

## Built With

- [Ruby on Rails](https://rubyonrails.org/)
- [GraphQL Ruby](https://graphql-ruby.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [GraphiQL Rails](https://github.com/rmosolgo/graphiql-rails)
