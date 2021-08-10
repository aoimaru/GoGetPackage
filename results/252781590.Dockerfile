[app/sources/252781590.Dockerfile]
digraph {
  "sha256:d06edd52aa89847ad8ab67dd061630206232e63a2731c49cbb6b767c00de308c" [label="docker-image://docker.io/m0sth8/base:latest" shape="ellipse"];
  "sha256:62dc0c39b07c6591154a1c42dab47baf055d75fb55d3d54403de6e3ed18957f9" [label="local://context" shape="ellipse"];
  "sha256:fdbfb186f52b98765bf61be7bc4e6297791f70279710d8f024d22f81e4d24eef" [label="copy{src=/, dest=/ruby}" shape="note"];
  "sha256:730cdcc95885960f0a414d44c68df8424b466e69905db9ba9972a1d11a5f3ff9" [label="/bin/sh -c /ruby/install.sh && rm -rf /ruby" shape="box"];
  "sha256:857621da86aaa28e6e9d88ed9f53379cc4cd69948f0c764ae93a26568a7c55b3" [label="sha256:857621da86aaa28e6e9d88ed9f53379cc4cd69948f0c764ae93a26568a7c55b3" shape="plaintext"];
  "sha256:d06edd52aa89847ad8ab67dd061630206232e63a2731c49cbb6b767c00de308c" -> "sha256:fdbfb186f52b98765bf61be7bc4e6297791f70279710d8f024d22f81e4d24eef" [label=""];
  "sha256:62dc0c39b07c6591154a1c42dab47baf055d75fb55d3d54403de6e3ed18957f9" -> "sha256:fdbfb186f52b98765bf61be7bc4e6297791f70279710d8f024d22f81e4d24eef" [label=""];
  "sha256:fdbfb186f52b98765bf61be7bc4e6297791f70279710d8f024d22f81e4d24eef" -> "sha256:730cdcc95885960f0a414d44c68df8424b466e69905db9ba9972a1d11a5f3ff9" [label=""];
  "sha256:730cdcc95885960f0a414d44c68df8424b466e69905db9ba9972a1d11a5f3ff9" -> "sha256:857621da86aaa28e6e9d88ed9f53379cc4cd69948f0c764ae93a26568a7c55b3" [label=""];
}

