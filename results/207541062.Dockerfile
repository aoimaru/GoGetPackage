[app/sources/207541062.Dockerfile]
digraph {
  "sha256:29adcd317b7e2c6f316568e6fdf4dc59ba34351d38baafd27432a48657ef680d" [label="docker-image://gcr.io/aronchick-apollobit/py3numpy:v1.0" shape="ellipse"];
  "sha256:e7be09c5a9e7fbdfb3403caa2bb81584dd825dc894ead888092877c14b37da8f" [label="/bin/sh -c set -ex   && apk add --no-cache --virtual .fetch-deps curl    && curl -fSL \"https://github.com/chrislovecnm/gpmr/archive/${RELEASE}.tar.gz\" -o gpmr.tar.gz   && tar xzf gpmr.tar.gz   && cd \"gpmr-${RELEASE}/pet-race-job/\"   && python3 setup.py install   && mv data /   && apk del .fetch-deps   && cd /   && rm gpmr.tar.gz   && rm -rf ~/.cache gpmr-${RELEASE}   && find /usr/local -depth \t\t\\( \t\t    \\( -type d -a -name test -o -name tests \\) \t\t    -o \t\t    \\( -type f -a -name '*.pyc' -o -name '*.pyo' \\) \t\t\\) -exec rm -rf '{}' +" shape="box"];
  "sha256:26f19ed47193ba64de60078bd89ad5484e53f36488cb2aa92a79cec407f502df" [label="local://context" shape="ellipse"];
  "sha256:211be011899b7062494e5429fad6d42e2feb1de2c88ecaa3b2aaf4951fdd0959" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:174581cf117858039daeab7ffe326906ffba978f6c63e7f770b8b37d0d006d45" [label="sha256:174581cf117858039daeab7ffe326906ffba978f6c63e7f770b8b37d0d006d45" shape="plaintext"];
  "sha256:29adcd317b7e2c6f316568e6fdf4dc59ba34351d38baafd27432a48657ef680d" -> "sha256:e7be09c5a9e7fbdfb3403caa2bb81584dd825dc894ead888092877c14b37da8f" [label=""];
  "sha256:e7be09c5a9e7fbdfb3403caa2bb81584dd825dc894ead888092877c14b37da8f" -> "sha256:211be011899b7062494e5429fad6d42e2feb1de2c88ecaa3b2aaf4951fdd0959" [label=""];
  "sha256:26f19ed47193ba64de60078bd89ad5484e53f36488cb2aa92a79cec407f502df" -> "sha256:211be011899b7062494e5429fad6d42e2feb1de2c88ecaa3b2aaf4951fdd0959" [label=""];
  "sha256:211be011899b7062494e5429fad6d42e2feb1de2c88ecaa3b2aaf4951fdd0959" -> "sha256:174581cf117858039daeab7ffe326906ffba978f6c63e7f770b8b37d0d006d45" [label=""];
}

