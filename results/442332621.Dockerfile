[app/sources/442332621.Dockerfile]
digraph {
  "sha256:5d2edf4b4e8bf93ddb06376ffad9a0156248ba3c7bd99342b716df250d03f195" [label="docker-image://docker.io/nodesource/sid:4.4.7" shape="ellipse"];
  "sha256:cf98bc2104dd63bbff2db6d81a9d9fbca099fae001cbf7c98c17b1e14a519aef" [label="/bin/sh -c apt-get update && apt-get install git imagemagick -y" shape="box"];
  "sha256:f491fd0bade79665292f6e40d843367f9955056e8523c26cf6f97cf21cd83b69" [label="local://context" shape="ellipse"];
  "sha256:0a0d892b615c3c6c6fc1b2886814c2bba30bd2c5c31ddcd7c9928ada1143fd9c" [label="copy{src=/package.json, dest=/package.json}" shape="note"];
  "sha256:8fbeaf786b5bef501c2ac42328ad009dc22eed417f5e9bc9f0feee56bcdc49b8" [label="/bin/sh -c npm install" shape="box"];
  "sha256:d7d9e72455c7be3f6f5a1eef6bbbc14fc4d4f7ad915cb4a583b6a5acd524c1e4" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:bde604e1e0e4f1b555bf0d09cd0ede1c8d9535c44d152c6f8e457ef038745176" [label="sha256:bde604e1e0e4f1b555bf0d09cd0ede1c8d9535c44d152c6f8e457ef038745176" shape="plaintext"];
  "sha256:5d2edf4b4e8bf93ddb06376ffad9a0156248ba3c7bd99342b716df250d03f195" -> "sha256:cf98bc2104dd63bbff2db6d81a9d9fbca099fae001cbf7c98c17b1e14a519aef" [label=""];
  "sha256:cf98bc2104dd63bbff2db6d81a9d9fbca099fae001cbf7c98c17b1e14a519aef" -> "sha256:0a0d892b615c3c6c6fc1b2886814c2bba30bd2c5c31ddcd7c9928ada1143fd9c" [label=""];
  "sha256:f491fd0bade79665292f6e40d843367f9955056e8523c26cf6f97cf21cd83b69" -> "sha256:0a0d892b615c3c6c6fc1b2886814c2bba30bd2c5c31ddcd7c9928ada1143fd9c" [label=""];
  "sha256:0a0d892b615c3c6c6fc1b2886814c2bba30bd2c5c31ddcd7c9928ada1143fd9c" -> "sha256:8fbeaf786b5bef501c2ac42328ad009dc22eed417f5e9bc9f0feee56bcdc49b8" [label=""];
  "sha256:8fbeaf786b5bef501c2ac42328ad009dc22eed417f5e9bc9f0feee56bcdc49b8" -> "sha256:d7d9e72455c7be3f6f5a1eef6bbbc14fc4d4f7ad915cb4a583b6a5acd524c1e4" [label=""];
  "sha256:f491fd0bade79665292f6e40d843367f9955056e8523c26cf6f97cf21cd83b69" -> "sha256:d7d9e72455c7be3f6f5a1eef6bbbc14fc4d4f7ad915cb4a583b6a5acd524c1e4" [label=""];
  "sha256:d7d9e72455c7be3f6f5a1eef6bbbc14fc4d4f7ad915cb4a583b6a5acd524c1e4" -> "sha256:bde604e1e0e4f1b555bf0d09cd0ede1c8d9535c44d152c6f8e457ef038745176" [label=""];
}

