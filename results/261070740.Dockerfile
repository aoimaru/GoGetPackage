[app/sources/261070740.Dockerfile]
digraph {
  "sha256:ae7d7b877c457098fab3fdbaa1aea02af55c748d0cd5c399b8065af56430e617" [label="local://context" shape="ellipse"];
  "sha256:8dbdd1eb4d9e4e79be3f85b43af59a7355643624bc7e2acaa78211c53431ae19" [label="docker-image://daocloud.io/node:4.3.0-slim@sha256:805ca7477593efa17dd6ae1f18530b67df7792a2967785bdc8d4c0213482744d" shape="ellipse"];
  "sha256:afa9d586d797b67fda01f931164f33eaea60ad8d227a23e65b941f77fae37c06" [label="/bin/sh -c apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62   && echo \"deb http://nginx.org/packages/mainline/debian/ jessie nginx\" >> /etc/apt/sources.list   && apt-get update   && apt-get install -y ca-certificates nginx=${NGINX_VERSION} gettext-base git libpng-dev   && rm -rf /var/lib/apt/lists/*   && ln -sf /dev/stdout /var/log/nginx/access.log   && ln -sf /dev/stderr /var/log/nginx/error.log   && npm install -g -q npm && npm install -g -q gulp" shape="box"];
  "sha256:e89697d0d14673d72c908fe365cf7ef99a55ff489f286c5f106b7e2002342664" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:e61f7ee98c758f29b8ae09cd4e4ae70b29684644fe5eedf3b2179fa1d6669576" [label="mkdir{path=/app}" shape="note"];
  "sha256:cd3efca40fef5bcac829f3161079f70832c08e9eba9419e333b5f064475f1ddf" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:0040859a66e8d1225f0c13be9b9b1ab3ac1e0d9b0f1847438177522e65151ff1" [label="/bin/sh -c npm install -q" shape="box"];
  "sha256:41786d9dfa83f20cba9a25e8984be7df152fe341d4a7c70afbb755f4db20dd08" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:480356f996bf1ee0664ce366f20ea702a67191e0f55b2a9599061c21e109c05c" [label="/bin/sh -c gulp webpack" shape="box"];
  "sha256:c6b73ca9fb691df188127949cf7bffb8b8a876e18c76eb11e531045e687bfb7a" [label="sha256:c6b73ca9fb691df188127949cf7bffb8b8a876e18c76eb11e531045e687bfb7a" shape="plaintext"];
  "sha256:8dbdd1eb4d9e4e79be3f85b43af59a7355643624bc7e2acaa78211c53431ae19" -> "sha256:afa9d586d797b67fda01f931164f33eaea60ad8d227a23e65b941f77fae37c06" [label=""];
  "sha256:afa9d586d797b67fda01f931164f33eaea60ad8d227a23e65b941f77fae37c06" -> "sha256:e89697d0d14673d72c908fe365cf7ef99a55ff489f286c5f106b7e2002342664" [label=""];
  "sha256:ae7d7b877c457098fab3fdbaa1aea02af55c748d0cd5c399b8065af56430e617" -> "sha256:e89697d0d14673d72c908fe365cf7ef99a55ff489f286c5f106b7e2002342664" [label=""];
  "sha256:e89697d0d14673d72c908fe365cf7ef99a55ff489f286c5f106b7e2002342664" -> "sha256:e61f7ee98c758f29b8ae09cd4e4ae70b29684644fe5eedf3b2179fa1d6669576" [label=""];
  "sha256:e61f7ee98c758f29b8ae09cd4e4ae70b29684644fe5eedf3b2179fa1d6669576" -> "sha256:cd3efca40fef5bcac829f3161079f70832c08e9eba9419e333b5f064475f1ddf" [label=""];
  "sha256:ae7d7b877c457098fab3fdbaa1aea02af55c748d0cd5c399b8065af56430e617" -> "sha256:cd3efca40fef5bcac829f3161079f70832c08e9eba9419e333b5f064475f1ddf" [label=""];
  "sha256:cd3efca40fef5bcac829f3161079f70832c08e9eba9419e333b5f064475f1ddf" -> "sha256:0040859a66e8d1225f0c13be9b9b1ab3ac1e0d9b0f1847438177522e65151ff1" [label=""];
  "sha256:0040859a66e8d1225f0c13be9b9b1ab3ac1e0d9b0f1847438177522e65151ff1" -> "sha256:41786d9dfa83f20cba9a25e8984be7df152fe341d4a7c70afbb755f4db20dd08" [label=""];
  "sha256:ae7d7b877c457098fab3fdbaa1aea02af55c748d0cd5c399b8065af56430e617" -> "sha256:41786d9dfa83f20cba9a25e8984be7df152fe341d4a7c70afbb755f4db20dd08" [label=""];
  "sha256:41786d9dfa83f20cba9a25e8984be7df152fe341d4a7c70afbb755f4db20dd08" -> "sha256:480356f996bf1ee0664ce366f20ea702a67191e0f55b2a9599061c21e109c05c" [label=""];
  "sha256:480356f996bf1ee0664ce366f20ea702a67191e0f55b2a9599061c21e109c05c" -> "sha256:c6b73ca9fb691df188127949cf7bffb8b8a876e18c76eb11e531045e687bfb7a" [label=""];
}

