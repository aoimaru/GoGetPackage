[app/sources/340322624.Dockerfile]
digraph {
  "sha256:a37ce36545563fc4158a4815e769bf5e64ae32aa43846c9623bcfc0271bd56b2" [label="docker-image://docker.io/resin/rpi-raspbian:latest" shape="ellipse"];
  "sha256:0fafc6921be43fb98afd87278e222a96c6b7d1249d523e70e5d7426c1ce9a573" [label="/bin/sh -c apt-get update &&     apt-get install -y       debhelper       build-essential:native       cmake       dvb-apps       git       libavahi-client-dev       liburiparser-dev       libssl-dev       python       zlib1g-dev       wget &&     apt-get clean &&     git clone -b v${TVHEADEND_VERSION} https://github.com/tvheadend/tvheadend.git &&     cd tvheadend &&     AUTOBUILD_CONFIGURE_EXTRA=--disable-bintray_cache\\ --disable-hdhomerun_static\\ --disable-ffmpeg_static\\ --disable-dvbscan ./Autobuild.sh &&     dpkg -i ../tvheadend_${TVHEADEND_VERSION}_armhf.deb &&     rm -rf ~/*.deb ~/tvheadend" shape="box"];
  "sha256:5920552b612838f501fed91419612c2dddef5264c3ffc16762b47adfa86a66d6" [label="sha256:5920552b612838f501fed91419612c2dddef5264c3ffc16762b47adfa86a66d6" shape="plaintext"];
  "sha256:a37ce36545563fc4158a4815e769bf5e64ae32aa43846c9623bcfc0271bd56b2" -> "sha256:0fafc6921be43fb98afd87278e222a96c6b7d1249d523e70e5d7426c1ce9a573" [label=""];
  "sha256:0fafc6921be43fb98afd87278e222a96c6b7d1249d523e70e5d7426c1ce9a573" -> "sha256:5920552b612838f501fed91419612c2dddef5264c3ffc16762b47adfa86a66d6" [label=""];
}

