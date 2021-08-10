[app/sources/309691280.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:dd156864b2c67c9334dba9c3937390ffba6f2363785c1302b537584ea4ff1dd9" [label="/bin/sh -c adduser -s /bin/bash -u $NB_UID -D $NB_USER" shape="box"];
  "sha256:50222e675b72956eb08bbd0abaeaaf480f23ca292086f5095e93b03a72ce0fdf" [label="/bin/sh -c mkdir /home/$NB_USER/work &&     mkdir /home/$NB_USER/.jupyter &&     mkdir /home/$NB_USER/.local" shape="box"];
  "sha256:51f139a74052cc371736922e9ec04e2da599e6c884da13511587f4661b812cd3" [label="/bin/sh -c set -x     && apk update     && apk --no-cache add         ca-certificates         python3         su-exec         gcc         g++         git         pkgconfig         python3-dev         zeromq-dev         musl-dev         mercurial         libtool         autoconf         automake         make     && echo pip upgrade && pip3 install --upgrade pip     && echo python3.6 && cp /usr/bin/python3.6 /usr/bin/python     && echo update chacher && apk --update-cache --allow-untrusted         --repository http://dl-4.alpinelinux.org/alpine/edge/community         --arch=x86_64 add         go     && ln -s /usr/include/locale.h /usr/include/xlocale.h     && pip3 install jupyter notebook     && find /usr/lib/python3.6 -name __pycache__ | xargs rm -r     && rm -rf         /root/.[acpw]*         ipaexg00301*     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:1fcaa5a7e94921a15537a82753c0a6296d1b469ede3ee1b7053f851d06ed2833" [label="/bin/sh -c set -x     && GOPATH=~/go     && go get -insecure github.com/pebbe/zmq4     && go get github.com/gopherdata/gophernotes     && mkdir -p ~/.local/share/jupyter/kernels/gophernotes     && cp -r ~/go/src/github.com/gopherdata/gophernotes/kernel/* ~/.local/share/jupyter/kernels/gophernotes" shape="box"];
  "sha256:a21cbbc88ee3e3d727270396113269a2497fed3ac7f2bb39a266122ed89250f4" [label="/bin/sh -c cp /home/jovyan/go/bin/gophernotes /usr/local/bin/" shape="box"];
  "sha256:c23dfa08480f756f3bb66740de4d37572e9c28ccc6b7899a294d4cf3beb80d84" [label="/bin/sh -c set -x     && GOPATH=~/go     && go get -insecure gonum.org/v1/plot/...     && go get -insecure gonum.org/v1/gonum/...     && go get github.com/kniren/gota/...     && go get github.com/sajari/regression     && go get github.com/sjwhitworth/golearn/...     && go get -insecure go-hep.org/x/hep/csvutil/...     && go get -insecure go-hep.org/x/hep/fit     && go get -insecure go-hep.org/x/hep/hbook     && go get github.com/montanaflynn/stats     && go get github.com/boltdb/bolt     && go get github.com/patrickmn/go-cache     && go get github.com/chewxy/math32     && go get gonum.org/v1/gonum/mat     && go get github.com/chewxy/hm     && go get -u gorgonia.org/vecf64     && go get -u gorgonia.org/vecf32     && go get github.com/awalterschulze/gographviz     && go get github.com/leesper/go_rng     && go get github.com/pkg/errors     && go get github.com/stretchr/testify/assert     && go get github.com/kniren/gota/dataframe     && go get github.com/skelterjohn/go.matrix    && go get github.com/gonum/matrix/mat64    && go get github.com/gonum/stat     && go get github.com/mash/gokmeans     && go get github.com/garyburd/go-oauth/oauth     && go get github.com/machinebox/sdk-go/textbox" shape="box"];
  "sha256:983d03a3f931a2fb54cdb53928bb74091e1a067ded98a5d27ab35e7bff443c16" [label="sha256:983d03a3f931a2fb54cdb53928bb74091e1a067ded98a5d27ab35e7bff443c16" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:dd156864b2c67c9334dba9c3937390ffba6f2363785c1302b537584ea4ff1dd9" [label=""];
  "sha256:dd156864b2c67c9334dba9c3937390ffba6f2363785c1302b537584ea4ff1dd9" -> "sha256:50222e675b72956eb08bbd0abaeaaf480f23ca292086f5095e93b03a72ce0fdf" [label=""];
  "sha256:50222e675b72956eb08bbd0abaeaaf480f23ca292086f5095e93b03a72ce0fdf" -> "sha256:51f139a74052cc371736922e9ec04e2da599e6c884da13511587f4661b812cd3" [label=""];
  "sha256:51f139a74052cc371736922e9ec04e2da599e6c884da13511587f4661b812cd3" -> "sha256:1fcaa5a7e94921a15537a82753c0a6296d1b469ede3ee1b7053f851d06ed2833" [label=""];
  "sha256:1fcaa5a7e94921a15537a82753c0a6296d1b469ede3ee1b7053f851d06ed2833" -> "sha256:a21cbbc88ee3e3d727270396113269a2497fed3ac7f2bb39a266122ed89250f4" [label=""];
  "sha256:a21cbbc88ee3e3d727270396113269a2497fed3ac7f2bb39a266122ed89250f4" -> "sha256:c23dfa08480f756f3bb66740de4d37572e9c28ccc6b7899a294d4cf3beb80d84" [label=""];
  "sha256:c23dfa08480f756f3bb66740de4d37572e9c28ccc6b7899a294d4cf3beb80d84" -> "sha256:983d03a3f931a2fb54cdb53928bb74091e1a067ded98a5d27ab35e7bff443c16" [label=""];
}

