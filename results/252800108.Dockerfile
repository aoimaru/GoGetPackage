[app/sources/252800108.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:f08c4120d8fc7b1d91af75c2127e9f5dd354e5663380acdc3d606c73edb19d40" [label="local://context" shape="ellipse"];
  "sha256:684a183344c5ef7a6d48e5e25af41e6bc84b3dcb19d0d9c34dff145e92cfdaf5" [label="copy{src=/ml.py, dest=/}" shape="note"];
  "sha256:f84cdb0d9b25b89bc3491ac672f7be1a71fa3d179588147a568e1034d0db8a18" [label="copy{src=/recepts2.csv, dest=/}" shape="note"];
  "sha256:c4fb71ff4d593a3559e2f6ebb957783a43a327cf7cd766a48cb2224d26dcb1ef" [label="/bin/sh -c pip install numpy" shape="box"];
  "sha256:f0b4704ca81b28838922d737242da3c1a3c78bc7eb14694a58201a90f20d9a89" [label="/bin/sh -c pip install pandas" shape="box"];
  "sha256:086508b13914f230dc7efaf0a5f6bc5a23dde1f83d58b7434cc10a7cf7eac2e7" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:e83bf4bc7dcea1b2eb08e7b6870ce345589e53a6a3d1a2ef754caee122d00f38" [label="/bin/sh -c pip install fuzzywuzzy" shape="box"];
  "sha256:c9c2b5410e65817efdfbc165b54f712a5ad077bf0433953d0f77ca57494920a3" [label="/bin/sh -c pip install sklearn" shape="box"];
  "sha256:0196d3cdce129cd3d8d76eced4ab5ef94c12558852cd879c09cf929fe0323eac" [label="/bin/sh -c pip install scipy" shape="box"];
  "sha256:4e03b7f559d1e5a05724968d342a3eb454754148b7dbdd26319d53facd1621a8" [label="sha256:4e03b7f559d1e5a05724968d342a3eb454754148b7dbdd26319d53facd1621a8" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:684a183344c5ef7a6d48e5e25af41e6bc84b3dcb19d0d9c34dff145e92cfdaf5" [label=""];
  "sha256:f08c4120d8fc7b1d91af75c2127e9f5dd354e5663380acdc3d606c73edb19d40" -> "sha256:684a183344c5ef7a6d48e5e25af41e6bc84b3dcb19d0d9c34dff145e92cfdaf5" [label=""];
  "sha256:684a183344c5ef7a6d48e5e25af41e6bc84b3dcb19d0d9c34dff145e92cfdaf5" -> "sha256:f84cdb0d9b25b89bc3491ac672f7be1a71fa3d179588147a568e1034d0db8a18" [label=""];
  "sha256:f08c4120d8fc7b1d91af75c2127e9f5dd354e5663380acdc3d606c73edb19d40" -> "sha256:f84cdb0d9b25b89bc3491ac672f7be1a71fa3d179588147a568e1034d0db8a18" [label=""];
  "sha256:f84cdb0d9b25b89bc3491ac672f7be1a71fa3d179588147a568e1034d0db8a18" -> "sha256:c4fb71ff4d593a3559e2f6ebb957783a43a327cf7cd766a48cb2224d26dcb1ef" [label=""];
  "sha256:c4fb71ff4d593a3559e2f6ebb957783a43a327cf7cd766a48cb2224d26dcb1ef" -> "sha256:f0b4704ca81b28838922d737242da3c1a3c78bc7eb14694a58201a90f20d9a89" [label=""];
  "sha256:f0b4704ca81b28838922d737242da3c1a3c78bc7eb14694a58201a90f20d9a89" -> "sha256:086508b13914f230dc7efaf0a5f6bc5a23dde1f83d58b7434cc10a7cf7eac2e7" [label=""];
  "sha256:086508b13914f230dc7efaf0a5f6bc5a23dde1f83d58b7434cc10a7cf7eac2e7" -> "sha256:e83bf4bc7dcea1b2eb08e7b6870ce345589e53a6a3d1a2ef754caee122d00f38" [label=""];
  "sha256:e83bf4bc7dcea1b2eb08e7b6870ce345589e53a6a3d1a2ef754caee122d00f38" -> "sha256:c9c2b5410e65817efdfbc165b54f712a5ad077bf0433953d0f77ca57494920a3" [label=""];
  "sha256:c9c2b5410e65817efdfbc165b54f712a5ad077bf0433953d0f77ca57494920a3" -> "sha256:0196d3cdce129cd3d8d76eced4ab5ef94c12558852cd879c09cf929fe0323eac" [label=""];
  "sha256:0196d3cdce129cd3d8d76eced4ab5ef94c12558852cd879c09cf929fe0323eac" -> "sha256:4e03b7f559d1e5a05724968d342a3eb454754148b7dbdd26319d53facd1621a8" [label=""];
}

