[app/sources/181151865.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a997c4785016aec6d5f6164cc2c324f4872637b42a855190c8616f6ac43ddb7c" [label="/bin/sh -c apt-get update &&     apt-get install -qy --no-install-recommends         ruby-bundler         ruby-ffi         ruby-nokogiri         ruby-typhoeus         ruby-addressable         ruby-json         ruby-terminal-table         ruby-progressbar         ruby-webmock         ruby-simplecov         ruby-rspec         ruby-rspec-its         libcurl4-openssl-dev     &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/*" shape="box"];
  "sha256:664041105b71941a9a199b1af215a3e9ee180dc4099ea3021f6ddbcab5067814" [label="local://context" shape="ellipse"];
  "sha256:657eb36018e8da1373b2457b0981ad92768b60beef0485fa81bdb034896e6623" [label="copy{src=/, dest=/vane/}" shape="note"];
  "sha256:4e4e7cc3ea74c51813b246eb2f3118e52c369926b501077419f4b02d4114efea" [label="/bin/sh -c rm /vane/Gemfile" shape="box"];
  "sha256:ca4c48a32b19134983759d598d1b2fab5f53eff6502f79e61f3777c8555ce08f" [label="mkdir{path=/vane}" shape="note"];
  "sha256:7d46ea072d73713c0c00deb5f9dece110850421a8d15eb0bf1c0e90e347b7b8b" [label="sha256:7d46ea072d73713c0c00deb5f9dece110850421a8d15eb0bf1c0e90e347b7b8b" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a997c4785016aec6d5f6164cc2c324f4872637b42a855190c8616f6ac43ddb7c" [label=""];
  "sha256:a997c4785016aec6d5f6164cc2c324f4872637b42a855190c8616f6ac43ddb7c" -> "sha256:657eb36018e8da1373b2457b0981ad92768b60beef0485fa81bdb034896e6623" [label=""];
  "sha256:664041105b71941a9a199b1af215a3e9ee180dc4099ea3021f6ddbcab5067814" -> "sha256:657eb36018e8da1373b2457b0981ad92768b60beef0485fa81bdb034896e6623" [label=""];
  "sha256:657eb36018e8da1373b2457b0981ad92768b60beef0485fa81bdb034896e6623" -> "sha256:4e4e7cc3ea74c51813b246eb2f3118e52c369926b501077419f4b02d4114efea" [label=""];
  "sha256:4e4e7cc3ea74c51813b246eb2f3118e52c369926b501077419f4b02d4114efea" -> "sha256:ca4c48a32b19134983759d598d1b2fab5f53eff6502f79e61f3777c8555ce08f" [label=""];
  "sha256:ca4c48a32b19134983759d598d1b2fab5f53eff6502f79e61f3777c8555ce08f" -> "sha256:7d46ea072d73713c0c00deb5f9dece110850421a8d15eb0bf1c0e90e347b7b8b" [label=""];
}

