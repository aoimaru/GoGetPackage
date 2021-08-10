[app/sources/247130896.Dockerfile]
digraph {
  "sha256:40e969d57a521ff3eb2dc10984fe3fe676e954651d37df1b90da508080f9dff9" [label="docker-image://docker.io/instantlinux/postfix:3.3.2-r0@sha256:d998c94c53c0eeb85039ec268a666d4b256bb5d4daa21623b27186c50d516fa8" shape="ellipse"];
  "sha256:cade7985549c7d39a78ca57be2a0afaecf93a84fb5c37bf61a1301821950dbd7" [label="local://context" shape="ellipse"];
  "sha256:895b21e845d63367402d5975b893f916b6a19b4ebe1b6526de75a42f8a7d75da" [label="copy{src=/requirements, dest=/root/}" shape="note"];
  "sha256:2c4e25d9038c54dc1e2a05f4c1c30bc736a917392dd8610a15d61da56511c879" [label="copy{src=/src, dest=/usr/local/bin/}" shape="note"];
  "sha256:840ed7760e380794a3130dbaaee12bf04466118c8c35a9cc5063fa907e6caa86" [label="/bin/sh -c apk add --no-cache --update      curl openssl python2 python2-dev py-configobj py-mysqldb  &&     mkdir build && cd build &&     wget -q -O get-pip.py $GETPIP_URI &&     echo \"$GETPIP_SHA  get-pip.py\" | sha256sum -c &&     python get-pip.py --disable-pip-version-check --no-cache-dir       pip==$PYTHON_PIP_VERSION &&     pip --version &&     apk add --no-cache --virtual .fetch-deps       gcc git freetype-dev jpeg-dev musl-dev zlib-dev &&     pip install -r /root/common.txt &&     chmod -R g+rx,o+rx /usr/local/bin &&     adduser -S -u 2026 -g \"Spamassassin\" -s /bin/sh spamfilter &&     addgroup spamfilter postdrop &&     apk del .fetch-deps &&     find /usr/local -depth \\(         \\( -type d -a -name test -o -name tests \\) -o         \\( -type f -a -name '*.pyc' -o -name '*.pyo' \\)       \\) -exec rm -rf '{}' +;     rm -fr /var/log/* /var/cache/apk/* /build" shape="box"];
  "sha256:95f881e274bb718c04c9150f2f94a5ca42e8a8a4e529935d874e6c05e4959bb2" [label="sha256:95f881e274bb718c04c9150f2f94a5ca42e8a8a4e529935d874e6c05e4959bb2" shape="plaintext"];
  "sha256:40e969d57a521ff3eb2dc10984fe3fe676e954651d37df1b90da508080f9dff9" -> "sha256:895b21e845d63367402d5975b893f916b6a19b4ebe1b6526de75a42f8a7d75da" [label=""];
  "sha256:cade7985549c7d39a78ca57be2a0afaecf93a84fb5c37bf61a1301821950dbd7" -> "sha256:895b21e845d63367402d5975b893f916b6a19b4ebe1b6526de75a42f8a7d75da" [label=""];
  "sha256:895b21e845d63367402d5975b893f916b6a19b4ebe1b6526de75a42f8a7d75da" -> "sha256:2c4e25d9038c54dc1e2a05f4c1c30bc736a917392dd8610a15d61da56511c879" [label=""];
  "sha256:cade7985549c7d39a78ca57be2a0afaecf93a84fb5c37bf61a1301821950dbd7" -> "sha256:2c4e25d9038c54dc1e2a05f4c1c30bc736a917392dd8610a15d61da56511c879" [label=""];
  "sha256:2c4e25d9038c54dc1e2a05f4c1c30bc736a917392dd8610a15d61da56511c879" -> "sha256:840ed7760e380794a3130dbaaee12bf04466118c8c35a9cc5063fa907e6caa86" [label=""];
  "sha256:840ed7760e380794a3130dbaaee12bf04466118c8c35a9cc5063fa907e6caa86" -> "sha256:95f881e274bb718c04c9150f2f94a5ca42e8a8a4e529935d874e6c05e4959bb2" [label=""];
}

