[app/sources/302188167.Dockerfile]
digraph {
  "sha256:69c03d901ca35d49fb3e38b2928a6ac5fe0cf216247b6c5e188923f4f47586f4" [label="docker-image://docker.io/library/solr:7.2" shape="ellipse"];
  "sha256:2b3bcf0ab921c98d6c5f1a890bbbbe14656365137e44fd43dd57be16a2c087a0" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:6cc0016c8691e2590594f33ccfd662228c4ac5c05c7e49ae3c730b2dbf365d06" [label="/bin/sh -c curl -s -k -o zm-solr-docker-deps.tar.gz 'https://docker.zimbra.com.s3.amazonaws.com/assets/zm-solr-docker-deps-20180423.tar.gz'" shape="box"];
  "sha256:deaa04de0bd2c1ff8ae6016d8e717d4a82c480c0c3088d1c6309cc94b2ad316a" [label="/bin/sh -c tar -C / --no-overwrite-dir --strip-components=1 -xf zm-solr-docker-deps.tar.gz" shape="box"];
  "sha256:644fe10fae3aea665da5d7ac2af6b1885c09457f2136cc048e6018dfdfc39877" [label="/bin/sh -c rm zm-solr-docker-deps.tar.gz" shape="box"];
  "sha256:1e450a8c62598b6bd76a711761a8ee8dd7964c606004f8bc400b34ceced49944" [label="/bin/sh -c cp -r /opt/solr/server/solr /opt/solr/init-solr-home" shape="box"];
  "sha256:5246b34eeb793c45309bdafea108503fd68875409284b353303299ea58fb0f4c" [label="local://context" shape="ellipse"];
  "sha256:cd7b43800f40fcb714f373a93db548d01ef27bc163ace8f71505a8b5dde18073" [label="copy{src=/solr/entrypoint, dest=/opt/solr/entrypoint}" shape="note"];
  "sha256:d414ab15a4e34d32c585be7d6bd928a0d1893fea40e838fdaa193a6d19df72af" [label="mkdir{path=/opt/solr}" shape="note"];
  "sha256:3647b8c21e2bcc5d164dac5e99e5a25dd455fff4a0613e3acefdf1c633f0bf59" [label="sha256:3647b8c21e2bcc5d164dac5e99e5a25dd455fff4a0613e3acefdf1c633f0bf59" shape="plaintext"];
  "sha256:69c03d901ca35d49fb3e38b2928a6ac5fe0cf216247b6c5e188923f4f47586f4" -> "sha256:2b3bcf0ab921c98d6c5f1a890bbbbe14656365137e44fd43dd57be16a2c087a0" [label=""];
  "sha256:2b3bcf0ab921c98d6c5f1a890bbbbe14656365137e44fd43dd57be16a2c087a0" -> "sha256:6cc0016c8691e2590594f33ccfd662228c4ac5c05c7e49ae3c730b2dbf365d06" [label=""];
  "sha256:6cc0016c8691e2590594f33ccfd662228c4ac5c05c7e49ae3c730b2dbf365d06" -> "sha256:deaa04de0bd2c1ff8ae6016d8e717d4a82c480c0c3088d1c6309cc94b2ad316a" [label=""];
  "sha256:deaa04de0bd2c1ff8ae6016d8e717d4a82c480c0c3088d1c6309cc94b2ad316a" -> "sha256:644fe10fae3aea665da5d7ac2af6b1885c09457f2136cc048e6018dfdfc39877" [label=""];
  "sha256:644fe10fae3aea665da5d7ac2af6b1885c09457f2136cc048e6018dfdfc39877" -> "sha256:1e450a8c62598b6bd76a711761a8ee8dd7964c606004f8bc400b34ceced49944" [label=""];
  "sha256:1e450a8c62598b6bd76a711761a8ee8dd7964c606004f8bc400b34ceced49944" -> "sha256:cd7b43800f40fcb714f373a93db548d01ef27bc163ace8f71505a8b5dde18073" [label=""];
  "sha256:5246b34eeb793c45309bdafea108503fd68875409284b353303299ea58fb0f4c" -> "sha256:cd7b43800f40fcb714f373a93db548d01ef27bc163ace8f71505a8b5dde18073" [label=""];
  "sha256:cd7b43800f40fcb714f373a93db548d01ef27bc163ace8f71505a8b5dde18073" -> "sha256:d414ab15a4e34d32c585be7d6bd928a0d1893fea40e838fdaa193a6d19df72af" [label=""];
  "sha256:d414ab15a4e34d32c585be7d6bd928a0d1893fea40e838fdaa193a6d19df72af" -> "sha256:3647b8c21e2bcc5d164dac5e99e5a25dd455fff4a0613e3acefdf1c633f0bf59" [label=""];
}

