[app/sources/231222142.Dockerfile]
digraph {
  "sha256:305a33081fe5768bd385bdae53d20cd32439e208bf918ed4d7d4e45b857c1531" [label="local://context" shape="ellipse"];
  "sha256:8ffc6ed307f71911330c1766bb82eefb163742b3a552ec5aaa711a251b58ec00" [label="docker-image://docker.io/library/nginx:1.15.8-alpine" shape="ellipse"];
  "sha256:c648203725f654be6baa5cdf605b088574b93a39efd0f8030860387bb659442e" [label="/bin/sh -c apt-get update  && apt-get install -y -q --no-install-recommends     ca-certificates less     && apt-get clean  && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:cca467249cdbbec6444657bd95b9b0660bd42a50d073f4e7bc98d8e5fe7489cc" [label="/bin/sh -c sed -i 's/^http {/&\\n    server_names_hash_bucket_size 128;/g' /etc/nginx/nginx.conf" shape="box"];
  "sha256:ff87d4a4a1dce54244caf191fb7ffef11c73e5821d35e44055bf0f62fba2599a" [label="/bin/sh -c chown nginx:nginx /var/log/nginx/" shape="box"];
  "sha256:62775c63378a5f5d55caf7a74d2e957457b1f5b8cd709f61d01ff9e50d0ae49c" [label="copy{src=/sites/default/index.html, dest=/sites/default/index.html}" shape="note"];
  "sha256:e2ed5f843be7ce4aff7997517246e5e4c136eae889938ab5a957afe48152be38" [label="copy{src=/sites/docker/index.html, dest=/sites/docker/index.html}" shape="note"];
  "sha256:57c0ad1708b4ce65f1a0c47ebc709991589302882ce3973ed7e2b786b302de77" [label="copy{src=/dynamic-sites.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:b6f760f45d12ecd905d87f4c93a004e0c0780039524cb04859dfb824a6c0cd51" [label="copy{src=/docker-entry.sh, dest=/docker-entry.sh}" shape="note"];
  "sha256:ddb7b38794b6e99299540d4896980826048e865a75851716f20c0d50cc96221b" [label="sha256:ddb7b38794b6e99299540d4896980826048e865a75851716f20c0d50cc96221b" shape="plaintext"];
  "sha256:8ffc6ed307f71911330c1766bb82eefb163742b3a552ec5aaa711a251b58ec00" -> "sha256:c648203725f654be6baa5cdf605b088574b93a39efd0f8030860387bb659442e" [label=""];
  "sha256:c648203725f654be6baa5cdf605b088574b93a39efd0f8030860387bb659442e" -> "sha256:cca467249cdbbec6444657bd95b9b0660bd42a50d073f4e7bc98d8e5fe7489cc" [label=""];
  "sha256:cca467249cdbbec6444657bd95b9b0660bd42a50d073f4e7bc98d8e5fe7489cc" -> "sha256:ff87d4a4a1dce54244caf191fb7ffef11c73e5821d35e44055bf0f62fba2599a" [label=""];
  "sha256:ff87d4a4a1dce54244caf191fb7ffef11c73e5821d35e44055bf0f62fba2599a" -> "sha256:62775c63378a5f5d55caf7a74d2e957457b1f5b8cd709f61d01ff9e50d0ae49c" [label=""];
  "sha256:305a33081fe5768bd385bdae53d20cd32439e208bf918ed4d7d4e45b857c1531" -> "sha256:62775c63378a5f5d55caf7a74d2e957457b1f5b8cd709f61d01ff9e50d0ae49c" [label=""];
  "sha256:62775c63378a5f5d55caf7a74d2e957457b1f5b8cd709f61d01ff9e50d0ae49c" -> "sha256:e2ed5f843be7ce4aff7997517246e5e4c136eae889938ab5a957afe48152be38" [label=""];
  "sha256:305a33081fe5768bd385bdae53d20cd32439e208bf918ed4d7d4e45b857c1531" -> "sha256:e2ed5f843be7ce4aff7997517246e5e4c136eae889938ab5a957afe48152be38" [label=""];
  "sha256:e2ed5f843be7ce4aff7997517246e5e4c136eae889938ab5a957afe48152be38" -> "sha256:57c0ad1708b4ce65f1a0c47ebc709991589302882ce3973ed7e2b786b302de77" [label=""];
  "sha256:305a33081fe5768bd385bdae53d20cd32439e208bf918ed4d7d4e45b857c1531" -> "sha256:57c0ad1708b4ce65f1a0c47ebc709991589302882ce3973ed7e2b786b302de77" [label=""];
  "sha256:57c0ad1708b4ce65f1a0c47ebc709991589302882ce3973ed7e2b786b302de77" -> "sha256:b6f760f45d12ecd905d87f4c93a004e0c0780039524cb04859dfb824a6c0cd51" [label=""];
  "sha256:305a33081fe5768bd385bdae53d20cd32439e208bf918ed4d7d4e45b857c1531" -> "sha256:b6f760f45d12ecd905d87f4c93a004e0c0780039524cb04859dfb824a6c0cd51" [label=""];
  "sha256:b6f760f45d12ecd905d87f4c93a004e0c0780039524cb04859dfb824a6c0cd51" -> "sha256:ddb7b38794b6e99299540d4896980826048e865a75851716f20c0d50cc96221b" [label=""];
}

