# This image is 7 Days to die dedicated server.

## build
`$ git clone https://github.com/MulticolorWorld/7days-to-die-server-image`

`$ docker build .`

## Use default setting
`$ docker run --name hoge -p 26900:26900/tcp -p 26900:26900/udp -p 26901:26901/udp -p 26902:26902/udp -d multicolorworld/7days-to-die-server-image:latest`

## Use castom setting
`$ docker run --name hoge -p 26900:26900/tcp -p 26900:26900/udp -p 26901:26901/udp -p 26902:26902/udp -d -v ./serverconfig.xml:/root/steam/7dtd/serverconfig.xml multicolorworld/7days-to-die-server-image:latest`

### If you are administer, expose 8080 or 8081 port as necessary.

## **※This container can't persist world save data! Don't rm container if not want to remove data.**