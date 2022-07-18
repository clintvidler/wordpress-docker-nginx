# Wordpress, Docker, NGINX

## Setup

### Create certificates

1. Follow this blog post to [Create SSL certificate for localhost using mkcert as trusted certificate authority](https://vidler.app/blog/security/create-ssl-certificate-for-localhost-https-using-mkcert-as-trusted-certificate-authority/)

2. Rename the certificates to fullchain.pem and privkey, and then move them to the ssl folder

## Run

`make up`

[WordPress URL](https://localhost:8443/)

### Use WP CLI to manage WordPress

WP-CLI will only start while it executes a command.

`make wp-cli cmd="{your command}"`

#### Example: Update core

- `make wp-cli cmd="core update"`

#### Example: Install and/or update plugins

- `make wp-cli cmd="plugin install classic-editor"`
- `make wp-cli cmd="plugin update classic-editor"`

#### Example: List users

- `make wp-cli cmd="user list"`

### Adminer

- `make adminer-up`
- [Adminer URL](http://localhost:9000/?server=database&username=wordpress&db=wordpress)
- `make adminer-down`
