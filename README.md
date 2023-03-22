# Hyperglass Docker

A simple [Hyperglass](https://github.com/thatmattlove/hyperglass) Docker container, based on Python 3.8 on Debian Bullseye.

## Usage

Edit `config/hyperglass.yaml` to configure your Hyperglass and `config/devices.yaml` to add routers. Then run `docker compose up -d`.

For more information on configuring Hyperglass, please refer to [official documentation](https://hyperglass.dev/docs/parameters).

The `config` folder is mounted to `/etc/hyperglass` in the container. The `static/custom` subdirectory (i.e. `/etc/hyperglass/static/custom`) is required for the container to start normally.

## Disclaimer

This is an extremely simple container for personal use. It is not intended to be used in production.
