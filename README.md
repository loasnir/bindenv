Bindenv
====

Binding environment variables to stdin text.

## Demo

```bash
$ export HOGE=hoge
$ echo '${HOGE}' | bindenv
hoge
```

## Install

```bash
curl https://loasnir.github.io/bindenv/bindenv > /usr/local/bin/bindenv
chmod +x /usr/local/bin/bindenv
```

## Requirement

* Ruby
  * 2.3
  * 2.4
  * 2.5
  * 2.6

## Usage


```bash
# print sample.yml
$ cat sample.yml
database:
  HOST: ${HOST}
  PORT: $PORT
  USERNAME: "${USERNAME}"
  PASSWORD: '${PASSWORD}'
  DATABASE: "$DATABASE"

# check local env
$ printenv
HOST=example.com
PORT=4321
USERNAME=dbuser
PASSWORD=dbpassword
DATABASE=dbname

# bind env
$ cat sample.yml | bindenv
database:
  HOST: example.com
  PORT: 4321
  USERNAME: "dbuser"
  PASSWORD: 'dbpassword'
  DATABASE: "dbname"
```

## Use with `.env`

https://github.com/madcoda/dotenv-shell

```bash
# print .env
$ cat .env
HOST=example.com
PORT=4321
USERNAME=dbuser
PASSWORD=dbpassword
DATABASE=dbname

# load .env
$ . dotenv

# bind env
$ cat sample.yml | bindenv
database:
  HOST: example.com
  PORT: 4321
  USERNAME: "dbuser"
  PASSWORD: 'dbpassword'
  DATABASE: "dbname"
```

## Licence

[MIT]()

## Author

[loasnir](https://github.com/loasnir)
