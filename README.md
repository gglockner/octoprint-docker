# octoprint-docker
 
Install and run OctoPrint via Docker microservices.

## HOWTO
- Execute `./setup.sh`

## TODO
- Implement camera streamer
- Push to public Github
- Documentation
- Serve/cache static data via web proxy
- Support for non-RPi installs
- Slim down camera-streamer by installing from source on alpine

## DONE
- Mount/persist OctoPrint data directory on host
- Clean nginx config
- SSL
- Test with printer
- Migrate home data from bind mount to volumes
- Persist Python packages on host
