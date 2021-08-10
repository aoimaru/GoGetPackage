[app/sources/227401828.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:beb62ef4121d6ad89ecaad03207accbf4f7e15f5353788a9c25f7f9781e444cc" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     postgresql-client dos2unix &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:db76b0bca98cf4525cbdd26af51429c72b3f55ae4b69c75b21dce690926049c3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:dc23d913b033fdfa33546614f487dc56e17d4a1ed17d6a5ffc9b6aeef79c26d1" [label="local://context" shape="ellipse"];
  "sha256:efbf6aa0dbfb81aa4bc4b1ebae99823826cea532873cf90a02f22fae67a69971" [label="copy{src=/deployment/requirements.txt, dest=/deployment/},copy{src=/deployment/uwsgi.ini, dest=/deployment/}" shape="note"];
  "sha256:ebc983c79f30a64dc20eebda6bb81971cfe60e92d930364dfc6e84a0e8771630" [label="/bin/sh -c pip install -r /deployment/requirements.txt" shape="box"];
  "sha256:f6edda3a359513d7314913cd21bb9dfb1cbacf83dc163e0b7a8617f5f403a621" [label="copy{src=/deployment/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:2214e9223a43a79a014237e139be96674b0fa74c3f8f9ff7fd8ee44c7a322e9e" [label="/bin/sh -c dos2unix /usr/local/bin/docker-entrypoint.sh &&     chmod a+x /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:867e98ac18c1f8ee89315d71f30ae196f130dda78e6e70ae1654eaa3cd622804" [label="copy{src=/app, dest=/usr/src/app/}" shape="note"];
  "sha256:63b35a60e686551033582616a1b68578632ad83feae0b675e46c1d187c66d9ee" [label="/bin/sh -c python manage.py collectstatic --noinput" shape="box"];
  "sha256:10c961181e84248535c282f002890e658716d7ad55bf8aae94503446be11a4a2" [label="sha256:10c961181e84248535c282f002890e658716d7ad55bf8aae94503446be11a4a2" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:beb62ef4121d6ad89ecaad03207accbf4f7e15f5353788a9c25f7f9781e444cc" [label=""];
  "sha256:beb62ef4121d6ad89ecaad03207accbf4f7e15f5353788a9c25f7f9781e444cc" -> "sha256:db76b0bca98cf4525cbdd26af51429c72b3f55ae4b69c75b21dce690926049c3" [label=""];
  "sha256:db76b0bca98cf4525cbdd26af51429c72b3f55ae4b69c75b21dce690926049c3" -> "sha256:efbf6aa0dbfb81aa4bc4b1ebae99823826cea532873cf90a02f22fae67a69971" [label=""];
  "sha256:dc23d913b033fdfa33546614f487dc56e17d4a1ed17d6a5ffc9b6aeef79c26d1" -> "sha256:efbf6aa0dbfb81aa4bc4b1ebae99823826cea532873cf90a02f22fae67a69971" [label=""];
  "sha256:efbf6aa0dbfb81aa4bc4b1ebae99823826cea532873cf90a02f22fae67a69971" -> "sha256:ebc983c79f30a64dc20eebda6bb81971cfe60e92d930364dfc6e84a0e8771630" [label=""];
  "sha256:ebc983c79f30a64dc20eebda6bb81971cfe60e92d930364dfc6e84a0e8771630" -> "sha256:f6edda3a359513d7314913cd21bb9dfb1cbacf83dc163e0b7a8617f5f403a621" [label=""];
  "sha256:dc23d913b033fdfa33546614f487dc56e17d4a1ed17d6a5ffc9b6aeef79c26d1" -> "sha256:f6edda3a359513d7314913cd21bb9dfb1cbacf83dc163e0b7a8617f5f403a621" [label=""];
  "sha256:f6edda3a359513d7314913cd21bb9dfb1cbacf83dc163e0b7a8617f5f403a621" -> "sha256:2214e9223a43a79a014237e139be96674b0fa74c3f8f9ff7fd8ee44c7a322e9e" [label=""];
  "sha256:2214e9223a43a79a014237e139be96674b0fa74c3f8f9ff7fd8ee44c7a322e9e" -> "sha256:867e98ac18c1f8ee89315d71f30ae196f130dda78e6e70ae1654eaa3cd622804" [label=""];
  "sha256:dc23d913b033fdfa33546614f487dc56e17d4a1ed17d6a5ffc9b6aeef79c26d1" -> "sha256:867e98ac18c1f8ee89315d71f30ae196f130dda78e6e70ae1654eaa3cd622804" [label=""];
  "sha256:867e98ac18c1f8ee89315d71f30ae196f130dda78e6e70ae1654eaa3cd622804" -> "sha256:63b35a60e686551033582616a1b68578632ad83feae0b675e46c1d187c66d9ee" [label=""];
  "sha256:63b35a60e686551033582616a1b68578632ad83feae0b675e46c1d187c66d9ee" -> "sha256:10c961181e84248535c282f002890e658716d7ad55bf8aae94503446be11a4a2" [label=""];
}

