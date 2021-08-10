[app/sources/213735775.Dockerfile]
digraph {
  "sha256:045706877e8c84990c2a94526a06ad485ea4c820f5f7d838346e25014bf4a505" [label="docker-image://docker.io/nodesource/fedora22-base:latest" shape="ellipse"];
  "sha256:721403931812c17cfc21b2a50131e92c6b9b5e69bc2a35761e409189544967ea" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_4.x/fc/22/x86_64/nodejs-4.4.6-1nodesource.fc22.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:c7938678f2896aa01d987395b2780340546acf1d803ad319db632a160fe1cca1" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:db46907e9dae52ea0104fe89bdf1f24805361aeb8e67ca416e643c73b2a61c6d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:35d386bc80acc7b0c55738e5ea187c659c086c129812eacf137f6c83ef2884be" [label="sha256:35d386bc80acc7b0c55738e5ea187c659c086c129812eacf137f6c83ef2884be" shape="plaintext"];
  "sha256:045706877e8c84990c2a94526a06ad485ea4c820f5f7d838346e25014bf4a505" -> "sha256:721403931812c17cfc21b2a50131e92c6b9b5e69bc2a35761e409189544967ea" [label=""];
  "sha256:721403931812c17cfc21b2a50131e92c6b9b5e69bc2a35761e409189544967ea" -> "sha256:c7938678f2896aa01d987395b2780340546acf1d803ad319db632a160fe1cca1" [label=""];
  "sha256:c7938678f2896aa01d987395b2780340546acf1d803ad319db632a160fe1cca1" -> "sha256:db46907e9dae52ea0104fe89bdf1f24805361aeb8e67ca416e643c73b2a61c6d" [label=""];
  "sha256:db46907e9dae52ea0104fe89bdf1f24805361aeb8e67ca416e643c73b2a61c6d" -> "sha256:35d386bc80acc7b0c55738e5ea187c659c086c129812eacf137f6c83ef2884be" [label=""];
}

