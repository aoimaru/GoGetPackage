[app/sources/175250011.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:38a1aff4cef4fd5e4871e20e4eeec0f0976bf6d8511889ddfc4d6d0961416643" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y curl git libzmq3-dev libyaml-dev apt-transport-https lsb-release &&     curl -L https://packagecloud.io/varnishcache/varnish41/gpgkey | apt-key add - &&     oslower=$(lsb_release -s -i | tr '[:upper:]' '[:lower:]') &&     oscodename=$(lsb_release -s -c) &&     echo \"Package: varnish\" >/etc/apt/preferences.d/varnish &&     echo \"Pin: release l=varnish41\" >>/etc/apt/preferences.d/varnish &&     echo \"Pin-Priority: 999\" >>/etc/apt/preferences.d/varnish &&     (test $oscodename != 'zesty' && echo \"deb https://packagecloud.io/varnishcache/varnish41/${oslower}/ ${oscodename} main\" > /etc/apt/sources.list.d/varnishcache_varnish41.list || true) &&     apt-get update &&     apt-get install -y varnish &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:32e43cb5860d2e02a1fd461c8b82e00d7ba8f2cfe55ee13b463009f2016c3f18" [label="/bin/sh -c addgroup --quiet --gid $userid \"u1000\" &&     adduser         --shell /bin/bash         --disabled-password         --force-badname         --no-create-home         --uid $userid         --gid $userid         --gecos ''         --quiet         --home \"/app\"         \"u1000\"" shape="box"];
  "sha256:2956ecb1e57d0ddec849bafdd44b57b4e836d2e349ebf48c8b7877fed5c27e09" [label="/bin/sh -c pip3 install --disable-pip-version-check --no-cache-dir zc.buildout==2.9.5 setuptools==32.2.0 && pip3 uninstall -y six || true" shape="box"];
  "sha256:b73aaedf6fef37c3dd7b10d7910e2ee5d8d96eb4ca201d32e00c4c8453520865" [label="/bin/sh -c arch=\"$(dpkg --print-architecture)\"     && set -x     && curl --silent -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.10/gosu-$arch\"     && EXPECTED_SHA=\"5b3b03713a888cee84ecbf4582b21ac9fd46c3d935ff2d7ea25dd5055d302d3c\"     && sha256sum /usr/local/bin/gosu | grep -q $EXPECTED_SHA     && chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:ded6340e32591be63d286c128cab1f0d688afddad00545e358cb3101d9d60d8f" [label="/bin/sh -c mkdir -p /app/cache" shape="box"];
  "sha256:9a36d0d4d15b0eba5ca40d9d37dd4b92b457bcd84dcfebed5c5f25ee23914a55" [label="local://context" shape="ellipse"];
  "sha256:91d81496cc9da85fb9750866b6fdf0d77baab0e7e50adb67cc93b84ad0d87208" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d42d73ba1c875388c42c39ee50715fecca0f2005e8fe18ec75afb6bf23dff8fb" [label="copy{src=/start.bash, dest=/start}" shape="note"];
  "sha256:6187b34bd4d9f2faeba34921e5b87677a2e8aa1f697780522d30e4e4f591b47f" [label="/bin/sh -c chown -R u1000:u1000 /app" shape="box"];
  "sha256:bb40662671af1e1ba66f6b33679a437f621027fd89421f671d36f54debdac81c" [label="/bin/sh -c python -m compileall" shape="box"];
  "sha256:94d5c933e56dd4845402c3eaae7338cb17b0d510106129c5e65a2029c480e1c2" [label="/bin/sh -c python -m compileall /app" shape="box"];
  "sha256:1b3e9e152476c1955fde2cc9fb94d080bed521232eed97eed884fa82d1af1d70" [label="mkdir{path=/app}" shape="note"];
  "sha256:6bf2e0bc121d360a7ae516382f509a4bad62d87e556fe725141772a5f094d56c" [label="/bin/sh -c mkdir -p -m 700 /app/.ssh &&     echo \"|1|mkhJkTqJT7XEFCg9zJ6vXr9F7KM=|1ihCQCq4xl9SQDtCAqwp4auiRIk= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBNn6VI+Ekg/iOz3bZL6bb35tj6fOjmmMOvkw592XDXy+bSes+2qHhcA3uOg5/wEtmRaK583uZH/CJ4512BpLb7M=\" >> /app/.ssh/known_hosts &&     echo \"|1|VmfmXO+MNtehwEnpYIEHO7zfvm8=|ya5Yt/ILBv/gMHQLAfSu2tOWO2I= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBNn6VI+Ekg/iOz3bZL6bb35tj6fOjmmMOvkw592XDXy+bSes+2qHhcA3uOg5/wEtmRaK583uZH/CJ4512BpLb7M=\" >> /app/.ssh/known_hosts" shape="box"];
  "sha256:845d92c6078457827db8bfa94efb74e2f0e9d0927c93afbe647b8334a7bd9e4b" [label="/bin/sh -c buildout bootstrap -c heroku.cfg" shape="box"];
  "sha256:995d55ce5b609afa82bb41c9c92983ea8929764865b87cf22fe347f6744a495d" [label="/bin/sh -c $run_buildout && bin/buildout -c heroku.cfg || true" shape="box"];
  "sha256:691cfd2b8ea2135e6534036dfae4ae7fe8070368b59fa5ced0345e44ba7c2de7" [label="sha256:691cfd2b8ea2135e6534036dfae4ae7fe8070368b59fa5ced0345e44ba7c2de7" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:38a1aff4cef4fd5e4871e20e4eeec0f0976bf6d8511889ddfc4d6d0961416643" [label=""];
  "sha256:38a1aff4cef4fd5e4871e20e4eeec0f0976bf6d8511889ddfc4d6d0961416643" -> "sha256:32e43cb5860d2e02a1fd461c8b82e00d7ba8f2cfe55ee13b463009f2016c3f18" [label=""];
  "sha256:32e43cb5860d2e02a1fd461c8b82e00d7ba8f2cfe55ee13b463009f2016c3f18" -> "sha256:2956ecb1e57d0ddec849bafdd44b57b4e836d2e349ebf48c8b7877fed5c27e09" [label=""];
  "sha256:2956ecb1e57d0ddec849bafdd44b57b4e836d2e349ebf48c8b7877fed5c27e09" -> "sha256:b73aaedf6fef37c3dd7b10d7910e2ee5d8d96eb4ca201d32e00c4c8453520865" [label=""];
  "sha256:b73aaedf6fef37c3dd7b10d7910e2ee5d8d96eb4ca201d32e00c4c8453520865" -> "sha256:ded6340e32591be63d286c128cab1f0d688afddad00545e358cb3101d9d60d8f" [label=""];
  "sha256:ded6340e32591be63d286c128cab1f0d688afddad00545e358cb3101d9d60d8f" -> "sha256:91d81496cc9da85fb9750866b6fdf0d77baab0e7e50adb67cc93b84ad0d87208" [label=""];
  "sha256:9a36d0d4d15b0eba5ca40d9d37dd4b92b457bcd84dcfebed5c5f25ee23914a55" -> "sha256:91d81496cc9da85fb9750866b6fdf0d77baab0e7e50adb67cc93b84ad0d87208" [label=""];
  "sha256:91d81496cc9da85fb9750866b6fdf0d77baab0e7e50adb67cc93b84ad0d87208" -> "sha256:d42d73ba1c875388c42c39ee50715fecca0f2005e8fe18ec75afb6bf23dff8fb" [label=""];
  "sha256:9a36d0d4d15b0eba5ca40d9d37dd4b92b457bcd84dcfebed5c5f25ee23914a55" -> "sha256:d42d73ba1c875388c42c39ee50715fecca0f2005e8fe18ec75afb6bf23dff8fb" [label=""];
  "sha256:d42d73ba1c875388c42c39ee50715fecca0f2005e8fe18ec75afb6bf23dff8fb" -> "sha256:6187b34bd4d9f2faeba34921e5b87677a2e8aa1f697780522d30e4e4f591b47f" [label=""];
  "sha256:6187b34bd4d9f2faeba34921e5b87677a2e8aa1f697780522d30e4e4f591b47f" -> "sha256:bb40662671af1e1ba66f6b33679a437f621027fd89421f671d36f54debdac81c" [label=""];
  "sha256:bb40662671af1e1ba66f6b33679a437f621027fd89421f671d36f54debdac81c" -> "sha256:94d5c933e56dd4845402c3eaae7338cb17b0d510106129c5e65a2029c480e1c2" [label=""];
  "sha256:94d5c933e56dd4845402c3eaae7338cb17b0d510106129c5e65a2029c480e1c2" -> "sha256:1b3e9e152476c1955fde2cc9fb94d080bed521232eed97eed884fa82d1af1d70" [label=""];
  "sha256:1b3e9e152476c1955fde2cc9fb94d080bed521232eed97eed884fa82d1af1d70" -> "sha256:6bf2e0bc121d360a7ae516382f509a4bad62d87e556fe725141772a5f094d56c" [label=""];
  "sha256:6bf2e0bc121d360a7ae516382f509a4bad62d87e556fe725141772a5f094d56c" -> "sha256:845d92c6078457827db8bfa94efb74e2f0e9d0927c93afbe647b8334a7bd9e4b" [label=""];
  "sha256:845d92c6078457827db8bfa94efb74e2f0e9d0927c93afbe647b8334a7bd9e4b" -> "sha256:995d55ce5b609afa82bb41c9c92983ea8929764865b87cf22fe347f6744a495d" [label=""];
  "sha256:995d55ce5b609afa82bb41c9c92983ea8929764865b87cf22fe347f6744a495d" -> "sha256:691cfd2b8ea2135e6534036dfae4ae7fe8070368b59fa5ced0345e44ba7c2de7" [label=""];
}

