[app/sources/353710335.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:c9b0de2d02e6c07226ac9d2b803167cd9da26749ec4f91cb15e85ac4e8f9291a" [label="local://context" shape="ellipse"];
  "sha256:20a146e55fd9986cb92c01e12c254126dd50ecedab0bf798c977aedeb7f15957" [label="copy{src=/Recipe, dest=/Recipe}" shape="note"];
  "sha256:78a491b1446a990466cf59b4c6c9e955a665eb00178bc2eb24e077b986fad1c7" [label="/bin/sh -c bash -ex Recipe && yum clean all && rm -rf /out && rm -rf Scribus*" shape="box"];
  "sha256:ca51ffaa05a2cf0068db3565a92d92f112664d3f400fb77040d64e59222e5163" [label="sha256:ca51ffaa05a2cf0068db3565a92d92f112664d3f400fb77040d64e59222e5163" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:20a146e55fd9986cb92c01e12c254126dd50ecedab0bf798c977aedeb7f15957" [label=""];
  "sha256:c9b0de2d02e6c07226ac9d2b803167cd9da26749ec4f91cb15e85ac4e8f9291a" -> "sha256:20a146e55fd9986cb92c01e12c254126dd50ecedab0bf798c977aedeb7f15957" [label=""];
  "sha256:20a146e55fd9986cb92c01e12c254126dd50ecedab0bf798c977aedeb7f15957" -> "sha256:78a491b1446a990466cf59b4c6c9e955a665eb00178bc2eb24e077b986fad1c7" [label=""];
  "sha256:78a491b1446a990466cf59b4c6c9e955a665eb00178bc2eb24e077b986fad1c7" -> "sha256:ca51ffaa05a2cf0068db3565a92d92f112664d3f400fb77040d64e59222e5163" [label=""];
}

