[app/sources/268716449.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:9d2058f540e2d9b7967fa2d21e2e3a777b21f9e1c02365772c934bab7ac6fca7" [label="/bin/sh -c apt-get update -y &&     apt-get install -y awstats python3     libnet-ip-perl libnet-dns-perl xz-utils" shape="box"];
  "sha256:fb5188a778c421283ca79887bbb1332cb5db9fa03358593c222c1e77c79ac31f" [label="/bin/sh -c rm -f /etc/awstats/awstats.conf" shape="box"];
  "sha256:365b49efc18d70180569fac3614465c56e0117e076a1343559e2f9e7361043dd" [label="/bin/sh -c sed -i \"s/\\/etc\\/opt\\/awstats/\\/awstats\\/config/g\" /usr/lib/cgi-bin/awstats.pl" shape="box"];
  "sha256:ca3c5f6f6dff3984364bf2e407e5944da8d91d0088f7f40ccc321a40b0abfc5a" [label="local://context" shape="ellipse"];
  "sha256:3f4bb72073a57f536acdbd3d288d1fec53e80d796a51079c1742a4dc1de87a28" [label="copy{src=/generate.py, dest=/}" shape="note"];
  "sha256:b4fb488835317c22fcfbf7e5defa80b02d1248eb6c49623779aa0da9b9a3fc7f" [label="/bin/sh -c chmod 700 /generate.py" shape="box"];
  "sha256:5ffb51ac3a6c81c2ba56a1d5335b510da9e8f13b00dcd56c1f9c5fcd39bc22eb" [label="sha256:5ffb51ac3a6c81c2ba56a1d5335b510da9e8f13b00dcd56c1f9c5fcd39bc22eb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:9d2058f540e2d9b7967fa2d21e2e3a777b21f9e1c02365772c934bab7ac6fca7" [label=""];
  "sha256:9d2058f540e2d9b7967fa2d21e2e3a777b21f9e1c02365772c934bab7ac6fca7" -> "sha256:fb5188a778c421283ca79887bbb1332cb5db9fa03358593c222c1e77c79ac31f" [label=""];
  "sha256:fb5188a778c421283ca79887bbb1332cb5db9fa03358593c222c1e77c79ac31f" -> "sha256:365b49efc18d70180569fac3614465c56e0117e076a1343559e2f9e7361043dd" [label=""];
  "sha256:365b49efc18d70180569fac3614465c56e0117e076a1343559e2f9e7361043dd" -> "sha256:3f4bb72073a57f536acdbd3d288d1fec53e80d796a51079c1742a4dc1de87a28" [label=""];
  "sha256:ca3c5f6f6dff3984364bf2e407e5944da8d91d0088f7f40ccc321a40b0abfc5a" -> "sha256:3f4bb72073a57f536acdbd3d288d1fec53e80d796a51079c1742a4dc1de87a28" [label=""];
  "sha256:3f4bb72073a57f536acdbd3d288d1fec53e80d796a51079c1742a4dc1de87a28" -> "sha256:b4fb488835317c22fcfbf7e5defa80b02d1248eb6c49623779aa0da9b9a3fc7f" [label=""];
  "sha256:b4fb488835317c22fcfbf7e5defa80b02d1248eb6c49623779aa0da9b9a3fc7f" -> "sha256:5ffb51ac3a6c81c2ba56a1d5335b510da9e8f13b00dcd56c1f9c5fcd39bc22eb" [label=""];
}

