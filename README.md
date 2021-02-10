# blaeu-dockerimage

## Useful Links

**Image Location :** [https://hub.docker.com/r/packettoobig/blaeu](https://hub.docker.com/r/packettoobig/blaeu)  
**Repo Location :** [https://github.com/packettoobig/blaeu-dockerimage](https://github.com/packettoobig/blaeu-dockerimage)  
**Blaeu Code Location:** [https://framagit.org/bortzmeyer/blaeu](https://framagit.org/bortzmeyer/blaeu)

## How to use

You will of course need docker to be installed.  
Please refer to [https://get.docker.com/](https://get.docker.com/) for information on this subject.  

The other main prerequisite is to have a RIPE Atlas API key.  
To get it, go to [https://atlas.ripe.net/keys/](https://atlas.ripe.net/keys/), and create a new one with "**Schedule a new measurement"** permissions.

Once you get it, you can use the following example:

    mkdir -p ~/.atlas
    echo "MYAPIKEY" > ~/.atlas/auth

### Lite Image

The lite (and main) image is python-based and ready-to-use.
Just run :

    sudo docker run -v $HOME/.atlas:/root/.atlas:ro packettoobig/blaeu

It will display the `blaeu-reach` help menu.

Here are some examples of what you can do :

    sudo docker run -v $HOME/.atlas:/root/.atlas:ro packettoobig/blaeu blaeu-reach 1.1.1.1
    sudo docker run -v $HOME/.atlas:/root/.atlas:ro packettoobig/blaeu blaeu-traceroute 2600::
    sudo docker run -v $HOME/.atlas:/root/.atlas:ro packettoobig/blaeu blaeu-resolve gnu.org
    sudo docker run -v $HOME/.atlas:/root/.atlas:ro packettoobig/blaeu blaeu-cert www.eff.org

### Full Image

The full image is debian-based, and it is intended for an interactive use.

It is just a `pip3 install blaeu` on top of [the changes in the original image](https://github.com/packettoobig/debian-custom-dockerimage)

The best way is to use the provided `docker.sh` script on a sudo-enabled machine:

    git clone https://github.com/packettoobig/blaeu-dockerimage.git
    cd debian-custom-dockerimage
    ./docker.sh

## Misc

Images are built everytime there is a commit to the associated branch.  
You can see the latest builds here : [https://hub.docker.com/r/packettoobig/blaeu/builds](https://hub.docker.com/r/packettoobig/blaeu/builds)
