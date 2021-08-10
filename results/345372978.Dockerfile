[app/sources/345372978.Dockerfile]
digraph {
  "sha256:0f83c97a1388d93c9b8b1e8563f2b5dc4b517f04d6e30d695c78e1e5b525e3d8" [label="docker-image://docker.io/balenalib/intel-nuc-debian:sid-run" shape="ellipse"];
  "sha256:e0f66d388abf0e90174a4bc6e429100005cadb13488c7277a4ab29e7cd1039dc" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4dd065d33d38c522904af54da00777cc0e3342baac275544cb5f5036b41bbf0f" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:2b91b637f5c5e5864bf7962905d63cb8ce73d8fc3395a53821cc8c0daaa45353" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4c7cde5279da140c95d2d84cc1c811408dd90882f0c9cb6a7f48479a944b2de3" [label="mkdir{path=/go}" shape="note"];
  "sha256:1565d98b571278868c2379163ce255a7b783babd4d9b19f354e88c8c8dbe59f7" [label="sha256:1565d98b571278868c2379163ce255a7b783babd4d9b19f354e88c8c8dbe59f7" shape="plaintext"];
  "sha256:0f83c97a1388d93c9b8b1e8563f2b5dc4b517f04d6e30d695c78e1e5b525e3d8" -> "sha256:e0f66d388abf0e90174a4bc6e429100005cadb13488c7277a4ab29e7cd1039dc" [label=""];
  "sha256:e0f66d388abf0e90174a4bc6e429100005cadb13488c7277a4ab29e7cd1039dc" -> "sha256:4dd065d33d38c522904af54da00777cc0e3342baac275544cb5f5036b41bbf0f" [label=""];
  "sha256:4dd065d33d38c522904af54da00777cc0e3342baac275544cb5f5036b41bbf0f" -> "sha256:2b91b637f5c5e5864bf7962905d63cb8ce73d8fc3395a53821cc8c0daaa45353" [label=""];
  "sha256:2b91b637f5c5e5864bf7962905d63cb8ce73d8fc3395a53821cc8c0daaa45353" -> "sha256:4c7cde5279da140c95d2d84cc1c811408dd90882f0c9cb6a7f48479a944b2de3" [label=""];
  "sha256:4c7cde5279da140c95d2d84cc1c811408dd90882f0c9cb6a7f48479a944b2de3" -> "sha256:1565d98b571278868c2379163ce255a7b783babd4d9b19f354e88c8c8dbe59f7" [label=""];
}

