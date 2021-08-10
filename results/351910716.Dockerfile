[app/sources/351910716.Dockerfile]
digraph {
  "sha256:36d8486c86845a2d54ee9ec1386c3877d096d1d989a579eb5926a0f2b6cda75c" [label="docker-image://docker.io/grapenf/sambamba:0.7.0" shape="ellipse"];
  "sha256:f7e740a83992fa3f00de08011462182a990a33b0a9c5ca63732fea457b4f2a6d" [label="docker-image://docker.io/grapenf/base:latest" shape="ellipse"];
  "sha256:d9f4d31b4c15e83f8dbaa179d0b7827bc67ce1788d607a77794ad22534887f1d" [label="/bin/sh -c apk add --no-cache perl R" shape="box"];
  "sha256:fd6937544525de5326a32afc345f1b9ce5e9ccc4d2039eebf9bc749c694aa668" [label="docker-image://docker.io/grapenf/rsem:1.2.21" shape="ellipse"];
  "sha256:2b7b6c1805ef586fdd0a63ce40df7350601d9bcaeb94b55fafb2db9adf90f2ee" [label="copy{src=/usr/local/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:592ddba72de75c21e70dd24ad857bb6ce7b60929eda44b171908abda6d099a7c" [label="copy{src=/usr/local/bin/sambamba, dest=/usr/local/bin/}" shape="note"];
  "sha256:c227d61b74a13c18bfcebccb88fcdebd168e312b6193fcbd55b740d87db075ee" [label="sha256:c227d61b74a13c18bfcebccb88fcdebd168e312b6193fcbd55b740d87db075ee" shape="plaintext"];
  "sha256:f7e740a83992fa3f00de08011462182a990a33b0a9c5ca63732fea457b4f2a6d" -> "sha256:d9f4d31b4c15e83f8dbaa179d0b7827bc67ce1788d607a77794ad22534887f1d" [label=""];
  "sha256:d9f4d31b4c15e83f8dbaa179d0b7827bc67ce1788d607a77794ad22534887f1d" -> "sha256:2b7b6c1805ef586fdd0a63ce40df7350601d9bcaeb94b55fafb2db9adf90f2ee" [label=""];
  "sha256:fd6937544525de5326a32afc345f1b9ce5e9ccc4d2039eebf9bc749c694aa668" -> "sha256:2b7b6c1805ef586fdd0a63ce40df7350601d9bcaeb94b55fafb2db9adf90f2ee" [label=""];
  "sha256:2b7b6c1805ef586fdd0a63ce40df7350601d9bcaeb94b55fafb2db9adf90f2ee" -> "sha256:592ddba72de75c21e70dd24ad857bb6ce7b60929eda44b171908abda6d099a7c" [label=""];
  "sha256:36d8486c86845a2d54ee9ec1386c3877d096d1d989a579eb5926a0f2b6cda75c" -> "sha256:592ddba72de75c21e70dd24ad857bb6ce7b60929eda44b171908abda6d099a7c" [label=""];
  "sha256:592ddba72de75c21e70dd24ad857bb6ce7b60929eda44b171908abda6d099a7c" -> "sha256:c227d61b74a13c18bfcebccb88fcdebd168e312b6193fcbd55b740d87db075ee" [label=""];
}

