# octoprint-docker
 
Install and run OctoPrint via Docker microservices.

Uses the 

## HOWTO
- Execute `./setup.sh`
- Set serverRestartCommand: killall octoprint

## TODO
- Test server and camera
- Push to public Github with a license
- Documentation
- Announce it
- Add install docker to setup script (?)
- Support to restart docker containers
- Initial Caddyfile configuration
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
- Implement camera streamer
