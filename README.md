# blaeu-dockerimage

## Useful Links

**Image Location :** [https://hub.docker.com/r/packettoobig/blaeu](https://hub.docker.com/r/packettoobig/blaeu)  
**Repo Location :** [https://github.com/packettoobig/blaeu-dockerimage](https://github.com/packettoobig/blaeu-dockerimage)  
**Blaeu Code Location:** [https://framagit.org/bortzmeyer/blaeu](https://framagit.org/bortzmeyer/blaeu)

## Diff with original debian

We just `pip3 install blaeu` on a base alpine image.

## How to use

You can simply run `docker run packettoobig/blaeu`

The script assumes you have a `.atlas/auth` file in your `$HOME` and mounts in to the same location as the docker file.

To get an API key from RIPE atlas, go to [https://atlas.ripe.net/keys/](https://atlas.ripe.net/keys/), and create a new one with "**Schedule a new measurement"** permissions.
Then, put it in `~/.atlas/auth`. No formatting required.

## Misc

Image is built everytime there is a commit to this repo.  
You can see the latest builds here : [https://hub.docker.com/r/packettoobig/blaeu/builds](https://hub.docker.com/r/packettoobig/blaeu/builds)
