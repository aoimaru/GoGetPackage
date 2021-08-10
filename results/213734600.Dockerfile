[app/sources/213734600.Dockerfile]
digraph {
  "sha256:316ba43480d257d0c8d0dc419edcdd885e5bfab03abcdcdd100087e66e7597be" [label="docker-image://docker.io/nodesource/centos5-base:latest" shape="ellipse"];
  "sha256:85a5b2ee0f471476bf39c6220fdbd6def2ba35eaac136fce2411377b210b8354" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub/el/5/x86_64/nodejs-0.10.43-1nodesource.el5.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:a2e775b4cfda9dc0f842f249f0b945873eb9bd77d38163a4a5c9b7eb43ba7ef3" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:51172f26aae5c7b87bbc761073dc4a239a67c8b6508357d8dace10f86e8820a8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f2bde391d2e49f73af0431cb0f083f64fb3ededc3084dc5e4281051544f2700f" [label="sha256:f2bde391d2e49f73af0431cb0f083f64fb3ededc3084dc5e4281051544f2700f" shape="plaintext"];
  "sha256:316ba43480d257d0c8d0dc419edcdd885e5bfab03abcdcdd100087e66e7597be" -> "sha256:85a5b2ee0f471476bf39c6220fdbd6def2ba35eaac136fce2411377b210b8354" [label=""];
  "sha256:85a5b2ee0f471476bf39c6220fdbd6def2ba35eaac136fce2411377b210b8354" -> "sha256:a2e775b4cfda9dc0f842f249f0b945873eb9bd77d38163a4a5c9b7eb43ba7ef3" [label=""];
  "sha256:a2e775b4cfda9dc0f842f249f0b945873eb9bd77d38163a4a5c9b7eb43ba7ef3" -> "sha256:51172f26aae5c7b87bbc761073dc4a239a67c8b6508357d8dace10f86e8820a8" [label=""];
  "sha256:51172f26aae5c7b87bbc761073dc4a239a67c8b6508357d8dace10f86e8820a8" -> "sha256:f2bde391d2e49f73af0431cb0f083f64fb3ededc3084dc5e4281051544f2700f" [label=""];
}

