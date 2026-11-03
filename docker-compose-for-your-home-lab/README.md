# Docker Compose for Your Home Lab

Companion files for the [Docker Compose for Your Home Lab](https://routerjockey.com/series/docker-compose-for-your-home-lab/) series, running real home lab services with Docker Compose.

- `part-1/` holds the Nginx `compose.yaml` from [Part 1: A Container Is Not a Tiny VM](https://routerjockey.com/docker-compose-home-lab-part-1/).
- `part-2/` holds the Pi-hole `compose.yaml` and the systemd-resolved drop-in that frees port 53, from [Part 2: Your First Useful Stack](https://routerjockey.com/docker-compose-home-lab-part-2/).
- `part-3/` holds the macvlan version of the Pi-hole `compose.yaml`, the `docker network create` command for the `lan` network, and the host shim script and systemd unit, from [Part 3: Give Your Containers a Real Address on Your LAN](https://routerjockey.com/docker-compose-home-lab-part-3/).

The addresses (`192.168.1.0/24`), the parent interface (`enp4s0`) and the Pi-hole password (`changeme`) are examples. Change them to match your network before you run anything.
