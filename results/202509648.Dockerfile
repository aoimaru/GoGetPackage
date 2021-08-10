[app/sources/202509648.Dockerfile]
digraph {
  "sha256:14ecd5d42f168cc7c6f7057dd145a723d0bd16b072cafd45635845522d0f5c54" [label="docker-image://docker.io/iron/python:2.7" shape="ellipse"];
  "sha256:6ac7b86e7490c178674c3d243b7158bb388e775bf253bf3ec52dd1c2742b4e31" [label="mkdir{path=/app}" shape="note"];
  "sha256:8bedf9e764bb69656ce0cb1203bced9b59afb569af21ec778e4133cc44317d6e" [label="/bin/sh -c apk --no-cache add py-setuptools  && apk --no-cache add db  && apk --no-cache add --virtual build-deps python-dev musl-dev db-dev gcc  && easy_install-2.7 \"bsddb3==5.3.0\"  && apk del build-deps  && apk --no-cache add py-curl  && easy_install-2.7 \"urlgrabber==3.9.1\"  && easy_install-2.7 \"botocore==1.4.17\"  && easy_install-2.7 \"boto3==1.3.1\"  && rm  -rf /tmp/*" shape="box"];
  "sha256:b638aadb6db6f261018a1397c211ff9ea2f467024be48ca4922177d376451ce7" [label="local://context" shape="ellipse"];
  "sha256:0fe60b344356ac9da8b3c0012300c710fdfd1327f9209af10f1c6d2443309856" [label="copy{src=/bootstrap.py, dest=/app/lambda-bootstrap.py}" shape="note"];
  "sha256:3258f903963c1c1937190488eac991b60e89db300586f62d1703c9a37b9a8da7" [label="sha256:3258f903963c1c1937190488eac991b60e89db300586f62d1703c9a37b9a8da7" shape="plaintext"];
  "sha256:14ecd5d42f168cc7c6f7057dd145a723d0bd16b072cafd45635845522d0f5c54" -> "sha256:6ac7b86e7490c178674c3d243b7158bb388e775bf253bf3ec52dd1c2742b4e31" [label=""];
  "sha256:6ac7b86e7490c178674c3d243b7158bb388e775bf253bf3ec52dd1c2742b4e31" -> "sha256:8bedf9e764bb69656ce0cb1203bced9b59afb569af21ec778e4133cc44317d6e" [label=""];
  "sha256:8bedf9e764bb69656ce0cb1203bced9b59afb569af21ec778e4133cc44317d6e" -> "sha256:0fe60b344356ac9da8b3c0012300c710fdfd1327f9209af10f1c6d2443309856" [label=""];
  "sha256:b638aadb6db6f261018a1397c211ff9ea2f467024be48ca4922177d376451ce7" -> "sha256:0fe60b344356ac9da8b3c0012300c710fdfd1327f9209af10f1c6d2443309856" [label=""];
  "sha256:0fe60b344356ac9da8b3c0012300c710fdfd1327f9209af10f1c6d2443309856" -> "sha256:3258f903963c1c1937190488eac991b60e89db300586f62d1703c9a37b9a8da7" [label=""];
}

