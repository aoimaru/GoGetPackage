[app/sources/430344035.Dockerfile]
digraph {
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" [label="docker-image://docker.io/library/ruby:2.1" shape="ellipse"];
  "sha256:ae57a9544ff51eeead7bad05268cf1efdbebd8ecefa91e9894be8c442ae3ff2a" [label="/bin/sh -c apt-get update   && apt-get install -y     git     node     python-pygments" shape="box"];
  "sha256:2ac6db73bb46cce22163cadfdf03f6c82854fff7161b5a537be8776fb87fd4bc" [label="local://context" shape="ellipse"];
  "sha256:5f2396a994cbaf3defaf3f1d9775f7cd7bb3d5de84b64ad55526d6c16924407d" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:041db5d431e85f93b66c4ed2c64f4b58ffd233ce02e75ad2114c80557be4bb2e" [label="mkdir{path=/src}" shape="note"];
  "sha256:d0a7f7340e17b8fdc621f3e0dfa72da4e723b584c055fad12da414a55cfefc10" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:b83cf70cf04f013c71d9d91f415e160ae7050746cba99e5cd488bdb802039cc7" [label="sha256:b83cf70cf04f013c71d9d91f415e160ae7050746cba99e5cd488bdb802039cc7" shape="plaintext"];
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" -> "sha256:ae57a9544ff51eeead7bad05268cf1efdbebd8ecefa91e9894be8c442ae3ff2a" [label=""];
  "sha256:ae57a9544ff51eeead7bad05268cf1efdbebd8ecefa91e9894be8c442ae3ff2a" -> "sha256:5f2396a994cbaf3defaf3f1d9775f7cd7bb3d5de84b64ad55526d6c16924407d" [label=""];
  "sha256:2ac6db73bb46cce22163cadfdf03f6c82854fff7161b5a537be8776fb87fd4bc" -> "sha256:5f2396a994cbaf3defaf3f1d9775f7cd7bb3d5de84b64ad55526d6c16924407d" [label=""];
  "sha256:5f2396a994cbaf3defaf3f1d9775f7cd7bb3d5de84b64ad55526d6c16924407d" -> "sha256:041db5d431e85f93b66c4ed2c64f4b58ffd233ce02e75ad2114c80557be4bb2e" [label=""];
  "sha256:041db5d431e85f93b66c4ed2c64f4b58ffd233ce02e75ad2114c80557be4bb2e" -> "sha256:d0a7f7340e17b8fdc621f3e0dfa72da4e723b584c055fad12da414a55cfefc10" [label=""];
  "sha256:d0a7f7340e17b8fdc621f3e0dfa72da4e723b584c055fad12da414a55cfefc10" -> "sha256:b83cf70cf04f013c71d9d91f415e160ae7050746cba99e5cd488bdb802039cc7" [label=""];
}

