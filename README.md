# octoprint-docker
 
Run OctoPrint as Docker microservices.

Uses [camera-streamer](https://github.com/ayufan/camera-streamer) for the webcam.

## HOWTO
- Execute `./setup.sh`
- Set serverRestartCommand: killall octoprint
- Set classic camera to:
  - Stream URL: /webcam/stream
  - Snapshot URL: http://camera:8080/snapshot

## TODO
- Documentation
- Announce it
- Add support for OctoPrint-CameraSettings
- Add install docker to setup script (?)
- Support to restart docker containers
- Automate initial Caddyfile configuration
- Serve/cache static data via web proxy
- Setup camera restart commands
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
- Test server and camera
- Test snapshots and timelapse
- Push to public Github with a license
