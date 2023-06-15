# octoprint-docker
 
Install and run OctoPrint via Docker microservices.

## HOWTO
- Execute `./setup.sh`

## TODO:
- Migrate home data from bind mount to volumes
- Persist Python packages on host
- Get camera streamer working
- Serve/cache static data via web proxy
- Setup for non-RPi installs

## DONE:
- Mount/persist OctoPrint data directory on host
- Clean nginx config
- SSL
- Test with printer
