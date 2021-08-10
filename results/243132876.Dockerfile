[app/sources/243132876.Dockerfile]
digraph {
  "sha256:644163a38ac7cb8c8cd1407b34004fc780c058bef3ba4731fbafffac63a252a4" [label="docker-image://docker.io/ppc64le/golang:1.8" shape="ellipse"];
  "sha256:217c9ada42bd8100c447763fb926f5b6bb3bf47234b557cc187e77d1358e8c62" [label="/bin/sh -c apt-get update -y &&     apt-get install -y ruby-dev git libffi-dev build-essential ruby &&     git clone https://github.com/elastic/logstash-forwarder.git --branch master &&     cd logstash-forwarder &&     go build -gccgoflags '-static-libgo' -o logstash-forwarder &&     gem install bundler && bundle install && make deb &&     dpkg -i /go/logstash-forwarder/logstash-forwarder_0.4.0_ppc64el.deb &&     apt-get -y remove --purge ruby-dev git libffi-dev build-essential ruby" shape="box"];
  "sha256:dd6fd6d57ddd2b2063206e872156475f932d749e5ae5c45e4d2cc8923fc33b15" [label="/bin/sh -c mkdir -p /opt/certs" shape="box"];
  "sha256:89c5bd652aacf40ed2b59a1ab8a7d4a41b27858f37bf5e2acbfe90d3c65ff389" [label="/bin/sh -c touch /var/log/syslog" shape="box"];
  "sha256:cbd9613235f2db245431ad2dcc7a8c58532d937d6916bc0688494afc65faccb9" [label="mkdir{path=/logstash-forwarder}" shape="note"];
  "sha256:80d3d36fb61efb42e106c0f7d9af7315ccd5e072137637720fa7044746266f80" [label="local://context" shape="ellipse"];
  "sha256:666b888c41deb6b6b91e7c0439a4dc5c3644eddab4c09c8b978c2ea4e5f63bbf" [label="copy{src=/logstash-forwarder.conf, dest=/logstash-forwarder/logstash-forwarder.conf}" shape="note"];
  "sha256:2d6183959426c5df183c1bcee11f3b56e7fb7fcd189dd3e5aa77a66fc8810f1c" [label="sha256:2d6183959426c5df183c1bcee11f3b56e7fb7fcd189dd3e5aa77a66fc8810f1c" shape="plaintext"];
  "sha256:644163a38ac7cb8c8cd1407b34004fc780c058bef3ba4731fbafffac63a252a4" -> "sha256:217c9ada42bd8100c447763fb926f5b6bb3bf47234b557cc187e77d1358e8c62" [label=""];
  "sha256:217c9ada42bd8100c447763fb926f5b6bb3bf47234b557cc187e77d1358e8c62" -> "sha256:dd6fd6d57ddd2b2063206e872156475f932d749e5ae5c45e4d2cc8923fc33b15" [label=""];
  "sha256:dd6fd6d57ddd2b2063206e872156475f932d749e5ae5c45e4d2cc8923fc33b15" -> "sha256:89c5bd652aacf40ed2b59a1ab8a7d4a41b27858f37bf5e2acbfe90d3c65ff389" [label=""];
  "sha256:89c5bd652aacf40ed2b59a1ab8a7d4a41b27858f37bf5e2acbfe90d3c65ff389" -> "sha256:cbd9613235f2db245431ad2dcc7a8c58532d937d6916bc0688494afc65faccb9" [label=""];
  "sha256:cbd9613235f2db245431ad2dcc7a8c58532d937d6916bc0688494afc65faccb9" -> "sha256:666b888c41deb6b6b91e7c0439a4dc5c3644eddab4c09c8b978c2ea4e5f63bbf" [label=""];
  "sha256:80d3d36fb61efb42e106c0f7d9af7315ccd5e072137637720fa7044746266f80" -> "sha256:666b888c41deb6b6b91e7c0439a4dc5c3644eddab4c09c8b978c2ea4e5f63bbf" [label=""];
  "sha256:666b888c41deb6b6b91e7c0439a4dc5c3644eddab4c09c8b978c2ea4e5f63bbf" -> "sha256:2d6183959426c5df183c1bcee11f3b56e7fb7fcd189dd3e5aa77a66fc8810f1c" [label=""];
}

