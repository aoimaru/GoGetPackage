[app/sources/364089168.Dockerfile]
digraph {
  "sha256:59f7913066126fe8e052c3096c802ca64fca06cf84ef1d0bb93e16eba738ed9e" [label="docker-image://docker.io/mapsquare/mbtiles-generator-base:0.3.0" shape="ellipse"];
  "sha256:d6bf41f40bf6accada1a4c70652b8eb43d9a378fa134acdcaaac15ea7667a5f3" [label="local://context" shape="ellipse"];
  "sha256:78f1dea02dd28baa5b5ea69319429d968df56e74f63eaeb399008d364b8ed0fc" [label="copy{src=/*.template, dest=/conf/}" shape="note"];
  "sha256:c36a6c555fb15ee95c443c79d118e06fe9548673ec50ac5686b2beaf91408ae1" [label="copy{src=/app.sh, dest=/}" shape="note"];
  "sha256:1743e9a89d3ada0caed247e4e043de71f202c8237a54065b51c4cdf015c1cce6" [label="sha256:1743e9a89d3ada0caed247e4e043de71f202c8237a54065b51c4cdf015c1cce6" shape="plaintext"];
  "sha256:59f7913066126fe8e052c3096c802ca64fca06cf84ef1d0bb93e16eba738ed9e" -> "sha256:78f1dea02dd28baa5b5ea69319429d968df56e74f63eaeb399008d364b8ed0fc" [label=""];
  "sha256:d6bf41f40bf6accada1a4c70652b8eb43d9a378fa134acdcaaac15ea7667a5f3" -> "sha256:78f1dea02dd28baa5b5ea69319429d968df56e74f63eaeb399008d364b8ed0fc" [label=""];
  "sha256:78f1dea02dd28baa5b5ea69319429d968df56e74f63eaeb399008d364b8ed0fc" -> "sha256:c36a6c555fb15ee95c443c79d118e06fe9548673ec50ac5686b2beaf91408ae1" [label=""];
  "sha256:d6bf41f40bf6accada1a4c70652b8eb43d9a378fa134acdcaaac15ea7667a5f3" -> "sha256:c36a6c555fb15ee95c443c79d118e06fe9548673ec50ac5686b2beaf91408ae1" [label=""];
  "sha256:c36a6c555fb15ee95c443c79d118e06fe9548673ec50ac5686b2beaf91408ae1" -> "sha256:1743e9a89d3ada0caed247e4e043de71f202c8237a54065b51c4cdf015c1cce6" [label=""];
}

