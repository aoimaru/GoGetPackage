[app/sources/252800503.Dockerfile]
digraph {
  "sha256:6370fce01db0b96fb67ed234b0bf49f744ed9262b6d891a0ca90dd3b60b1fcda" [label="docker-image://docker.io/library/debian:stretch-20170907" shape="ellipse"];
  "sha256:517ce62f387eff0d9571d4092368fdfd867e1fc56f46d7a490d40195fb189a28" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y apt-utils forensics-all foremost binwalk exiftool outguess pngtools pngcheck stegosuite git hexedit python3-pip python-pip autotools-dev automake libevent-dev bsdmainutils ffmpeg crunch cewl sonic-visualiser atomicparsley" shape="box"];
  "sha256:4cdbe198df2bc12c6d9515bc09df6def0bdbc46d21d1277b127a7bb12663caed" [label="/bin/sh -c pip3 install python-magic" shape="box"];
  "sha256:dc7949b127d84658f3f688d96aa7a63af0a56a53788c7b21cc8628327997589f" [label="/bin/sh -c pip install tqdm" shape="box"];
  "sha256:9f913cb7077d62ed7c30dcdfce0fefc0a0454884603c79512b47f77a8795ec92" [label="local://context" shape="ellipse"];
  "sha256:91b11a412741ad55b2e6420907d1b6e4e47349132ecef4ae097c0a32da887867" [label="copy{src=/install, dest=/tmp/install}" shape="note"];
  "sha256:8b22b62e63c783f7be2246c4268775a4c30e9eb6113eadf4f073df556bd5489f" [label="/bin/sh -c find /tmp/install -name '*.sh' -exec chmod a+x {} + && find /tmp/install -type f -executable -exec {} \\; && rm -rf /tmp/install" shape="box"];
  "sha256:4f037f46d51d309d45b1c7ea7e22a076071cce299da7ba58d2bc8cad90c614cb" [label="copy{src=/scripts, dest=/opt/scripts}" shape="note"];
  "sha256:242d965f42d3b42c289e9af39a1b907e9c4765e62018325c63a54acae5fa0b25" [label="/bin/sh -c find /opt/scripts -name '*.sh' -exec chmod a+x {} + && find /opt/scripts -name '*.py' -exec chmod a+x {} +" shape="box"];
  "sha256:e62aeac63c97480fef88e42b0eaf1bbf306480497d2a1dbc94730043c7f01e9f" [label="mkdir{path=/data}" shape="note"];
  "sha256:c18eba5e58be885b1d2514909b162a8ddccd4d08251d457fc086a57e8040aa64" [label="sha256:c18eba5e58be885b1d2514909b162a8ddccd4d08251d457fc086a57e8040aa64" shape="plaintext"];
  "sha256:6370fce01db0b96fb67ed234b0bf49f744ed9262b6d891a0ca90dd3b60b1fcda" -> "sha256:517ce62f387eff0d9571d4092368fdfd867e1fc56f46d7a490d40195fb189a28" [label=""];
  "sha256:517ce62f387eff0d9571d4092368fdfd867e1fc56f46d7a490d40195fb189a28" -> "sha256:4cdbe198df2bc12c6d9515bc09df6def0bdbc46d21d1277b127a7bb12663caed" [label=""];
  "sha256:4cdbe198df2bc12c6d9515bc09df6def0bdbc46d21d1277b127a7bb12663caed" -> "sha256:dc7949b127d84658f3f688d96aa7a63af0a56a53788c7b21cc8628327997589f" [label=""];
  "sha256:dc7949b127d84658f3f688d96aa7a63af0a56a53788c7b21cc8628327997589f" -> "sha256:91b11a412741ad55b2e6420907d1b6e4e47349132ecef4ae097c0a32da887867" [label=""];
  "sha256:9f913cb7077d62ed7c30dcdfce0fefc0a0454884603c79512b47f77a8795ec92" -> "sha256:91b11a412741ad55b2e6420907d1b6e4e47349132ecef4ae097c0a32da887867" [label=""];
  "sha256:91b11a412741ad55b2e6420907d1b6e4e47349132ecef4ae097c0a32da887867" -> "sha256:8b22b62e63c783f7be2246c4268775a4c30e9eb6113eadf4f073df556bd5489f" [label=""];
  "sha256:8b22b62e63c783f7be2246c4268775a4c30e9eb6113eadf4f073df556bd5489f" -> "sha256:4f037f46d51d309d45b1c7ea7e22a076071cce299da7ba58d2bc8cad90c614cb" [label=""];
  "sha256:9f913cb7077d62ed7c30dcdfce0fefc0a0454884603c79512b47f77a8795ec92" -> "sha256:4f037f46d51d309d45b1c7ea7e22a076071cce299da7ba58d2bc8cad90c614cb" [label=""];
  "sha256:4f037f46d51d309d45b1c7ea7e22a076071cce299da7ba58d2bc8cad90c614cb" -> "sha256:242d965f42d3b42c289e9af39a1b907e9c4765e62018325c63a54acae5fa0b25" [label=""];
  "sha256:242d965f42d3b42c289e9af39a1b907e9c4765e62018325c63a54acae5fa0b25" -> "sha256:e62aeac63c97480fef88e42b0eaf1bbf306480497d2a1dbc94730043c7f01e9f" [label=""];
  "sha256:e62aeac63c97480fef88e42b0eaf1bbf306480497d2a1dbc94730043c7f01e9f" -> "sha256:c18eba5e58be885b1d2514909b162a8ddccd4d08251d457fc086a57e8040aa64" [label=""];
}

