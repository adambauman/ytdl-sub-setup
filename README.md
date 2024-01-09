# ytdl-sub-setup
Setup scripts, compose files, and configurations for my ytdl-sub setup.

ytdl-sub on github: https://github.com/jmbannon/ytdl-sub

# Installation
Download the contents of this repository as a ZIP or running cloning with git.

## Container
Use your container service of choice, I'm using docker in an Ubuntu Server VM. If you go that route don't install the isolated docker option presented during OS install. Instead follow these instructions: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

1. Copy ```container/compose.yaml``` to your container folder. For mine I store it at ```/opt/containers/compose.yaml```, I use one compose.yaml for all my containers.
2. Edit your ```compose.yaml``` to match your library paths
3. Run ```sudo docker compose up -d``` from the directory containing ```compose.yaml```.

## Windows
The official instructions are pretty legit: https://ytdl-sub.readthedocs.io/en/latest/guides/install/windows.html

# Configure Your Subscriptions
There are two configuration files:
- ```config.yaml``` contains the presets for "Updated Daily", etc.
- ```subscriptions.yaml``` is the main config and contains the URLs for your channels, playlists, etc.

## Container
When you load the container it'll give you a URL you can pop in a web browser. This will bring you to a host VSCode instance where you can edit the files.

## Windows
Edit the files directly with Notepad, VSCode (recommended), etc.

## Manually Run a Download Job
### Container
Example using docker:

```sudo docker exec ytdl-sub ytdl-sub --config /config/ytdl-sub-configs/config.yaml sub /config/ytdl-sub-configs/subscriptions.yaml```

### Windows
Run:

```ytdl-sub.exe --config <full_path_to>\config.yaml sub <full_path_to>\subscriptions.yaml```

## Automate a Download Job
Use cron in Linux, see ```container/ytdl-sub-daily-cron-job.sh``` for details.

In Windows open Task Scheduler and add a new task that runs the download job command.