# This image is 7 Days to die dedicated server.
## Use default setting
`$ docker run --name hoge -d multicolorworld/7days-to-die-server-image:latest`

## Use castom setting
`$ docker run --name hoge -d -v ./serverconfig.xml:/root/steam/7dtd/serverconfig.xml multicolorworld/7days-to-die-server-image:latest`

**※This container can't persist world save data! Don't rm container if not want to remove data.**