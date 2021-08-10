[app/sources/380322371.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:f2436c6257baa7b89e5f535be96041cc46ae461653c9a6ceaa5d8c9cd7e28123" [label="/bin/sh -c useradd docker" shape="box"];
  "sha256:26db5827aec7e357b836bc5400df3e793f2d005d85eb4c874b38db29b515041e" [label="/bin/sh -c mkdir /clojure" shape="box"];
  "sha256:ffa90eef379ad31a8dd8b3ab93d8752fc36b0064deb25ba88be3b74e3b55d4cd" [label="/bin/sh -c curl -o /clojure/clojure.zip http://repo1.maven.org/maven2/org/clojure/clojure/1.8.0/clojure-1.8.0.zip" shape="box"];
  "sha256:009ed5fb9e25101081754014db89bc2e8e7bd674f4a9dbe5d246dda237ba4f9d" [label="/bin/sh -c unzip /clojure/clojure.zip 'clojure*.jar' -d /clojure && chmod -R go+rx /clojure" shape="box"];
  "sha256:d45cca64612b72351b278e26f9ce06703ad6a83f4629bdb0fd9c7a1180b59dd8" [label="/bin/sh -c chown -R docker /clojure" shape="box"];
  "sha256:c83b6280520322c37cb25bb1c8cb7a403ddd4a4afea9efd88b4ee80816a15b72" [label="sha256:c83b6280520322c37cb25bb1c8cb7a403ddd4a4afea9efd88b4ee80816a15b72" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:f2436c6257baa7b89e5f535be96041cc46ae461653c9a6ceaa5d8c9cd7e28123" [label=""];
  "sha256:f2436c6257baa7b89e5f535be96041cc46ae461653c9a6ceaa5d8c9cd7e28123" -> "sha256:26db5827aec7e357b836bc5400df3e793f2d005d85eb4c874b38db29b515041e" [label=""];
  "sha256:26db5827aec7e357b836bc5400df3e793f2d005d85eb4c874b38db29b515041e" -> "sha256:ffa90eef379ad31a8dd8b3ab93d8752fc36b0064deb25ba88be3b74e3b55d4cd" [label=""];
  "sha256:ffa90eef379ad31a8dd8b3ab93d8752fc36b0064deb25ba88be3b74e3b55d4cd" -> "sha256:009ed5fb9e25101081754014db89bc2e8e7bd674f4a9dbe5d246dda237ba4f9d" [label=""];
  "sha256:009ed5fb9e25101081754014db89bc2e8e7bd674f4a9dbe5d246dda237ba4f9d" -> "sha256:d45cca64612b72351b278e26f9ce06703ad6a83f4629bdb0fd9c7a1180b59dd8" [label=""];
  "sha256:d45cca64612b72351b278e26f9ce06703ad6a83f4629bdb0fd9c7a1180b59dd8" -> "sha256:c83b6280520322c37cb25bb1c8cb7a403ddd4a4afea9efd88b4ee80816a15b72" [label=""];
}

