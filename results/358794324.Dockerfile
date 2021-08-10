[app/sources/358794324.Dockerfile]
digraph {
  "sha256:fba123b3ed700c1ffe530057821d9b8187ccb5a2ce35acaf2f0e40b1433ecfd4" [label="docker-image://docker.io/library/ruby:2.6.1-slim" shape="ellipse"];
  "sha256:e683aea899ab89a20f7d07aa965d887c9746cbf57efed8fc67be3878cb95b8a5" [label="mkdir{path=/app}" shape="note"];
  "sha256:b0c118e87b2239354a95cc327733d8eb8b1273bb6c5198599028074279519c87" [label="/bin/sh -c useradd --user-group --create-home app" shape="box"];
  "sha256:2dc59bcd7a51fb2dc417624ffa01d937dedd0a61ec48662de430449003fdae7f" [label="/bin/sh -c apt-get update  && apt-get install -y --no-install-recommends       file       git       curl       libpq5       libsqlite3-0       libxslt1.1       libxml2       libcurl3       openssh-client  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:60e3d83ce1c3c52e171199f704fb356ce7675a0a578b15bbde2b6f4eb4975a88" [label="docker-image://docker.io/degica/rails-buildpack:2.6" shape="ellipse"];
  "sha256:ef48a7f2b1fd38f70aa13e11ca32181511bc3995ef579e55f631fe45773ec399" [label="mkdir{path=/app}" shape="note"];
  "sha256:4480e10399699208fbf89a3364a29f6915871c7c0db8bb5232cbbe6bbd24790f" [label="local://context" shape="ellipse"];
  "sha256:26c3a43b3c3ddaec75d8c1f176282cc0ddef541883330bb8fa77df7df2e6f557" [label="copy{src=/Gemfile, dest=/app/}" shape="note"];
  "sha256:65bfd5c4bbe2f314add0ade9c4632e23d72d3979c4e39c8adf03f5455d24379e" [label="copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:7759e4ca5798db136f9273ba33a4288916cf082876bd224523106b77fabc1d36" [label="/bin/sh -c bundle install -j=4 --without development test" shape="box"];
  "sha256:949a867a5aecec30869ed3ca31cf8d861564049fcd14fc63d7d77bbae642422d" [label="copy{src=/usr/local/bundle, dest=/usr/local/bundle}" shape="note"];
  "sha256:f47215323b00dc78baa9d658f39d0f156a2715b59af187e1563c392859c8aa28" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d8e6f4d91f66b0ee7b704756a6dee9cf94d4c559ea0ad91e8a12ad5d0e28d3dc" [label="sha256:d8e6f4d91f66b0ee7b704756a6dee9cf94d4c559ea0ad91e8a12ad5d0e28d3dc" shape="plaintext"];
  "sha256:fba123b3ed700c1ffe530057821d9b8187ccb5a2ce35acaf2f0e40b1433ecfd4" -> "sha256:e683aea899ab89a20f7d07aa965d887c9746cbf57efed8fc67be3878cb95b8a5" [label=""];
  "sha256:e683aea899ab89a20f7d07aa965d887c9746cbf57efed8fc67be3878cb95b8a5" -> "sha256:b0c118e87b2239354a95cc327733d8eb8b1273bb6c5198599028074279519c87" [label=""];
  "sha256:b0c118e87b2239354a95cc327733d8eb8b1273bb6c5198599028074279519c87" -> "sha256:2dc59bcd7a51fb2dc417624ffa01d937dedd0a61ec48662de430449003fdae7f" [label=""];
  "sha256:60e3d83ce1c3c52e171199f704fb356ce7675a0a578b15bbde2b6f4eb4975a88" -> "sha256:ef48a7f2b1fd38f70aa13e11ca32181511bc3995ef579e55f631fe45773ec399" [label=""];
  "sha256:ef48a7f2b1fd38f70aa13e11ca32181511bc3995ef579e55f631fe45773ec399" -> "sha256:26c3a43b3c3ddaec75d8c1f176282cc0ddef541883330bb8fa77df7df2e6f557" [label=""];
  "sha256:4480e10399699208fbf89a3364a29f6915871c7c0db8bb5232cbbe6bbd24790f" -> "sha256:26c3a43b3c3ddaec75d8c1f176282cc0ddef541883330bb8fa77df7df2e6f557" [label=""];
  "sha256:26c3a43b3c3ddaec75d8c1f176282cc0ddef541883330bb8fa77df7df2e6f557" -> "sha256:65bfd5c4bbe2f314add0ade9c4632e23d72d3979c4e39c8adf03f5455d24379e" [label=""];
  "sha256:4480e10399699208fbf89a3364a29f6915871c7c0db8bb5232cbbe6bbd24790f" -> "sha256:65bfd5c4bbe2f314add0ade9c4632e23d72d3979c4e39c8adf03f5455d24379e" [label=""];
  "sha256:65bfd5c4bbe2f314add0ade9c4632e23d72d3979c4e39c8adf03f5455d24379e" -> "sha256:7759e4ca5798db136f9273ba33a4288916cf082876bd224523106b77fabc1d36" [label=""];
  "sha256:2dc59bcd7a51fb2dc417624ffa01d937dedd0a61ec48662de430449003fdae7f" -> "sha256:949a867a5aecec30869ed3ca31cf8d861564049fcd14fc63d7d77bbae642422d" [label=""];
  "sha256:7759e4ca5798db136f9273ba33a4288916cf082876bd224523106b77fabc1d36" -> "sha256:949a867a5aecec30869ed3ca31cf8d861564049fcd14fc63d7d77bbae642422d" [label=""];
  "sha256:949a867a5aecec30869ed3ca31cf8d861564049fcd14fc63d7d77bbae642422d" -> "sha256:f47215323b00dc78baa9d658f39d0f156a2715b59af187e1563c392859c8aa28" [label=""];
  "sha256:4480e10399699208fbf89a3364a29f6915871c7c0db8bb5232cbbe6bbd24790f" -> "sha256:f47215323b00dc78baa9d658f39d0f156a2715b59af187e1563c392859c8aa28" [label=""];
  "sha256:f47215323b00dc78baa9d658f39d0f156a2715b59af187e1563c392859c8aa28" -> "sha256:d8e6f4d91f66b0ee7b704756a6dee9cf94d4c559ea0ad91e8a12ad5d0e28d3dc" [label=""];
}

