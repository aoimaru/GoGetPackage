[app/sources/386049714.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:cb24be42299ed894f90e637c9dba8647bfb43d49eb74f70c2a63e8d5d92f2f7c" [label="/bin/sh -c echo deb http://httpredir.debian.org/debian jessie-backports main |           sed 's/\\(.*\\)-sloppy \\(.*\\)/&@\\1 \\2/' | tr @ '\\n' |           tee /etc/apt/sources.list.d/backports.list &&     apt-get update &&     apt-get upgrade -y &&     apt-get install -y -t jessie-backports haproxy curl wget rsyslog &&     mkdir -p /run/haproxy &&     chown -R haproxy:haproxy /run/haproxy &&     curl -L https://github.com/kelseyhightower/confd/releases/download/v$CONFD_VERSION/confd-${CONFD_VERSION}-linux-amd64 -o /usr/local/bin/confd &&     chmod 555 /usr/local/bin/confd &&     pip install awscli supervisor==3.2.3 supervisor-stdout &&     wget -O /usr/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 &&     chmod +x /usr/bin/dumb-init &&     curl -L https://github.com/coreos/etcd/releases/download/$ETCDCTL_VERSION/etcd-$ETCDCTL_VERSION-linux-amd64.tar.gz -o /tmp/etcd-$ETCDCTL_VERSION-linux-amd64.tar.gz &&     cd /tmp && gzip -dc etcd-$ETCDCTL_VERSION-linux-amd64.tar.gz | tar -xof - &&     cp -f /tmp/etcd-$ETCDCTL_VERSION-linux-amd64/etcdctl /usr/local/bin &&     apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:2fffc535040495450d25e586bf43a18879103b4e0c5ce40d42f634ff409a76aa" [label="/bin/sh -c mkdir -p /var/log/supervisor &&     mkdir -p /etc/supervisor/conf.d &&     ln -sf /etc/supervisor/supervisord.conf /etc/supervisord.conf" shape="box"];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" [label="local://context" shape="ellipse"];
  "sha256:f22742166f718178cc6f3f6122854149324b21757772dd7aa9e9aa7a6c2b4a51" [label="copy{src=/etc/supervisor/conf.d/supervisord.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:c8cef6139562a08d2bc7a0164d993014672c220d2d12a952e31e242659df2aa8" [label="copy{src=/etc/supervisor/supervisord.conf, dest=/etc/supervisor/}" shape="note"];
  "sha256:198684a04475d2ec0ac7045c1d3c0e2d8cb7f95a1d874a79e5ba025025c51c86" [label="copy{src=/etc/confd, dest=/etc/confd}" shape="note"];
  "sha256:0d2269a37164c2898b21d35736a8d1219474a25f542529c437bca8544c47877c" [label="copy{src=/bin/sync-certs.sh, dest=/usr/sbin/sync-certs.sh}" shape="note"];
  "sha256:6ad981bcb8a4d0e54a516e2aaf6a7b3e81a8d23a55b4299520ee6e1121aad715" [label="/bin/sh -c chmod 550 /usr/sbin/sync-certs.sh" shape="box"];
  "sha256:077055a521c8252db40819443ef5239f415c341975c6d0e5126096e9a51782e9" [label="copy{src=/etc/haproxy/certs.d, dest=/etc/haproxy/certs.d}" shape="note"];
  "sha256:81e8ddc85dbc1a06541b12a46b39279fc0b593d5d259651c40937a1816e0dd24" [label="copy{src=/bin/*.sh, dest=/usr/sbin/}" shape="note"];
  "sha256:85e47b479ed81b0dc08846d470d75554876118119c877e54c5ceb41a65b2ca68" [label="/bin/sh -c chmod -R +x /usr/sbin" shape="box"];
  "sha256:8fccee39ecba432d7c2b19fc46e9d2a462b057bf9c69b2a4eef461735a31cba4" [label="sha256:8fccee39ecba432d7c2b19fc46e9d2a462b057bf9c69b2a4eef461735a31cba4" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:cb24be42299ed894f90e637c9dba8647bfb43d49eb74f70c2a63e8d5d92f2f7c" [label=""];
  "sha256:cb24be42299ed894f90e637c9dba8647bfb43d49eb74f70c2a63e8d5d92f2f7c" -> "sha256:2fffc535040495450d25e586bf43a18879103b4e0c5ce40d42f634ff409a76aa" [label=""];
  "sha256:2fffc535040495450d25e586bf43a18879103b4e0c5ce40d42f634ff409a76aa" -> "sha256:f22742166f718178cc6f3f6122854149324b21757772dd7aa9e9aa7a6c2b4a51" [label=""];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" -> "sha256:f22742166f718178cc6f3f6122854149324b21757772dd7aa9e9aa7a6c2b4a51" [label=""];
  "sha256:f22742166f718178cc6f3f6122854149324b21757772dd7aa9e9aa7a6c2b4a51" -> "sha256:c8cef6139562a08d2bc7a0164d993014672c220d2d12a952e31e242659df2aa8" [label=""];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" -> "sha256:c8cef6139562a08d2bc7a0164d993014672c220d2d12a952e31e242659df2aa8" [label=""];
  "sha256:c8cef6139562a08d2bc7a0164d993014672c220d2d12a952e31e242659df2aa8" -> "sha256:198684a04475d2ec0ac7045c1d3c0e2d8cb7f95a1d874a79e5ba025025c51c86" [label=""];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" -> "sha256:198684a04475d2ec0ac7045c1d3c0e2d8cb7f95a1d874a79e5ba025025c51c86" [label=""];
  "sha256:198684a04475d2ec0ac7045c1d3c0e2d8cb7f95a1d874a79e5ba025025c51c86" -> "sha256:0d2269a37164c2898b21d35736a8d1219474a25f542529c437bca8544c47877c" [label=""];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" -> "sha256:0d2269a37164c2898b21d35736a8d1219474a25f542529c437bca8544c47877c" [label=""];
  "sha256:0d2269a37164c2898b21d35736a8d1219474a25f542529c437bca8544c47877c" -> "sha256:6ad981bcb8a4d0e54a516e2aaf6a7b3e81a8d23a55b4299520ee6e1121aad715" [label=""];
  "sha256:6ad981bcb8a4d0e54a516e2aaf6a7b3e81a8d23a55b4299520ee6e1121aad715" -> "sha256:077055a521c8252db40819443ef5239f415c341975c6d0e5126096e9a51782e9" [label=""];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" -> "sha256:077055a521c8252db40819443ef5239f415c341975c6d0e5126096e9a51782e9" [label=""];
  "sha256:077055a521c8252db40819443ef5239f415c341975c6d0e5126096e9a51782e9" -> "sha256:81e8ddc85dbc1a06541b12a46b39279fc0b593d5d259651c40937a1816e0dd24" [label=""];
  "sha256:f0445eb0847e1e39fa384659c73cae7b16ee9ab600772efa2b1e99c2fd5b17a7" -> "sha256:81e8ddc85dbc1a06541b12a46b39279fc0b593d5d259651c40937a1816e0dd24" [label=""];
  "sha256:81e8ddc85dbc1a06541b12a46b39279fc0b593d5d259651c40937a1816e0dd24" -> "sha256:85e47b479ed81b0dc08846d470d75554876118119c877e54c5ceb41a65b2ca68" [label=""];
  "sha256:85e47b479ed81b0dc08846d470d75554876118119c877e54c5ceb41a65b2ca68" -> "sha256:8fccee39ecba432d7c2b19fc46e9d2a462b057bf9c69b2a4eef461735a31cba4" [label=""];
}

