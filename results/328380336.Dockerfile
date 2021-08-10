[app/sources/328380336.Dockerfile]
digraph {
  "sha256:9d30cb06c701faaf48ed361b3d577acc03e0e8e321ba53d9854f0930b9615ac2" [label="docker-image://docker.io/library/jetty:9-jre8" shape="ellipse"];
  "sha256:a1d8e08fc5d7913afc81d7ee9776c0c612d3cf895f696d23306fdca88eaa2208" [label="/bin/sh -c java -jar \"$JETTY_HOME/start.jar\" --create-startd --add-to-start=jmx,jmx-remote,stats,http-forwarded" shape="box"];
  "sha256:511f4fa97c0c4669370a77c90e22afdae434c02205db5873b877f543e01cc1f5" [label="local://context" shape="ellipse"];
  "sha256:7de60f35f6f745c9fd43adb3416b69f44563a5b73c5350018c615aea9f10233f" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:49bbbdeda16f36358d3dfda81dfab0a4288a87b03115b634bce4d1b171ad92ee" [label="/bin/sh -c apt-get update &&    apt-get install -y libgdal-java gdal-bin &&    rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0b26b2a23466e68aacaee84c9f780b7ae39592f1fbe8d3d8820e3f39a93a94c1" [label="/bin/sh -c unzip -d /var/lib/jetty/webapps/extractorapp /var/lib/jetty/webapps/extractorapp.war &&     ln -s /usr/share/java/gdal.jar /var/lib/jetty/webapps/extractorapp/WEB-INF/lib/ &&     rm -f /var/lib/jetty/webapps/extractorapp.war" shape="box"];
  "sha256:651774a834c0105056bcfad416bb74e8f943b5fea37f06dd60d174e05a194b88" [label="/bin/sh -c mkdir /mnt/extractorapp_extracts &&     chown jetty:jetty /etc/georchestra /mnt/extractorapp_extracts" shape="box"];
  "sha256:944b1b2f328d3e9fc66837419e6c438b1bbf283b4ee838359bd3a798d967a822" [label="sha256:944b1b2f328d3e9fc66837419e6c438b1bbf283b4ee838359bd3a798d967a822" shape="plaintext"];
  "sha256:9d30cb06c701faaf48ed361b3d577acc03e0e8e321ba53d9854f0930b9615ac2" -> "sha256:a1d8e08fc5d7913afc81d7ee9776c0c612d3cf895f696d23306fdca88eaa2208" [label=""];
  "sha256:a1d8e08fc5d7913afc81d7ee9776c0c612d3cf895f696d23306fdca88eaa2208" -> "sha256:7de60f35f6f745c9fd43adb3416b69f44563a5b73c5350018c615aea9f10233f" [label=""];
  "sha256:511f4fa97c0c4669370a77c90e22afdae434c02205db5873b877f543e01cc1f5" -> "sha256:7de60f35f6f745c9fd43adb3416b69f44563a5b73c5350018c615aea9f10233f" [label=""];
  "sha256:7de60f35f6f745c9fd43adb3416b69f44563a5b73c5350018c615aea9f10233f" -> "sha256:49bbbdeda16f36358d3dfda81dfab0a4288a87b03115b634bce4d1b171ad92ee" [label=""];
  "sha256:49bbbdeda16f36358d3dfda81dfab0a4288a87b03115b634bce4d1b171ad92ee" -> "sha256:0b26b2a23466e68aacaee84c9f780b7ae39592f1fbe8d3d8820e3f39a93a94c1" [label=""];
  "sha256:0b26b2a23466e68aacaee84c9f780b7ae39592f1fbe8d3d8820e3f39a93a94c1" -> "sha256:651774a834c0105056bcfad416bb74e8f943b5fea37f06dd60d174e05a194b88" [label=""];
  "sha256:651774a834c0105056bcfad416bb74e8f943b5fea37f06dd60d174e05a194b88" -> "sha256:944b1b2f328d3e9fc66837419e6c438b1bbf283b4ee838359bd3a798d967a822" [label=""];
}

