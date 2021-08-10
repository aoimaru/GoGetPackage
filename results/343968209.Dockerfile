[app/sources/343968209.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:67c4306ce87c6c22afe18b111deb901bf0fdbbabcc847d981161c8a9e19a081e" [label="/bin/sh -c apt-get -qy update &&             apt-get -y install apt-transport-https software-properties-common wget zip &&             wget -qO /tmp/terraform.zip https://dl.bintray.com/mitchellh/terraform/terraform_0.6.3_linux_amd64.zip &&             cd /tmp && unzip terraform.zip && rm terraform.zip && mv terraform terraform-provider-aws terraform-provider-template terraform-provisioner-local-exec terraform-provisioner-remote-exec /usr/local/bin/ && rm * &&             add-apt-repository -y \"deb https://clusterhq-archive.s3.amazonaws.com/ubuntu/$(lsb_release --release --short)/\\$(ARCH) /\" &&             apt-get -qy update &&             apt-get -qy upgrade &&             apt-get -y --force-yes install clusterhq-flocker-cli &&             apt-get remove --purge -y $(apt-mark showauto) python3.4 &&             apt-get -y install apt-transport-https software-properties-common &&             apt-get -y --force-yes install clusterhq-flocker-cli &&             rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e9d99915f95925c2af9b792c1c0a228a4a956082aab702f3d0b44f57ae4c5719" [label="local://context" shape="ellipse"];
  "sha256:6fce0b98133ec165f542873521c432f8fb6393643a63d29c21360e900dd06512" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:1a898611388d7dc556fbcad2f70dc79f7374c0eed98392b857d07af3f25905c3" [label="/bin/sh -c cd /app && /opt/flocker/bin/pip install --no-cache-dir . &&             rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /app" shape="box"];
  "sha256:4471de5432d18741003f071d6b3915a16043cb24076ef6e5351fe311b8253f3d" [label="mkdir{path=/pwd}" shape="note"];
  "sha256:de70ce7351ad581724f9e2718e63eed083a43ed776828dad69d81b40bc33349e" [label="sha256:de70ce7351ad581724f9e2718e63eed083a43ed776828dad69d81b40bc33349e" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:67c4306ce87c6c22afe18b111deb901bf0fdbbabcc847d981161c8a9e19a081e" [label=""];
  "sha256:67c4306ce87c6c22afe18b111deb901bf0fdbbabcc847d981161c8a9e19a081e" -> "sha256:6fce0b98133ec165f542873521c432f8fb6393643a63d29c21360e900dd06512" [label=""];
  "sha256:e9d99915f95925c2af9b792c1c0a228a4a956082aab702f3d0b44f57ae4c5719" -> "sha256:6fce0b98133ec165f542873521c432f8fb6393643a63d29c21360e900dd06512" [label=""];
  "sha256:6fce0b98133ec165f542873521c432f8fb6393643a63d29c21360e900dd06512" -> "sha256:1a898611388d7dc556fbcad2f70dc79f7374c0eed98392b857d07af3f25905c3" [label=""];
  "sha256:1a898611388d7dc556fbcad2f70dc79f7374c0eed98392b857d07af3f25905c3" -> "sha256:4471de5432d18741003f071d6b3915a16043cb24076ef6e5351fe311b8253f3d" [label=""];
  "sha256:4471de5432d18741003f071d6b3915a16043cb24076ef6e5351fe311b8253f3d" -> "sha256:de70ce7351ad581724f9e2718e63eed083a43ed776828dad69d81b40bc33349e" [label=""];
}

