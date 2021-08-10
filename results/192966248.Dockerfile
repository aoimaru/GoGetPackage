[app/sources/192966248.Dockerfile]
digraph {
  "sha256:bb81a1bd1c089d0ee208684e44a06d3de2e27a445cbe94157c740c3e338ae2a3" [label="docker-image://docker.io/confluent/platform:latest" shape="ellipse"];
  "sha256:eb348e375eee19918415865a12a87d12f0e29d32d521a144ced74359aaaffa29" [label="local://context" shape="ellipse"];
  "sha256:0a4101a6e36e2ebd3543c24ca22dfc1c50d889852bf54a275780b6e89a3b3c85" [label="copy{src=/rest-proxy-docker.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:fecc2008b274d95a4e9cedadb9df85361ab2e8df0230a25024c80e089f8e3e2a" [label="chown -R confluent:confluent /etc/kafka-rest /usr/local/bin/rest-proxy-docker.sh" shape="box"];
  "sha256:4192c36172aa41775b5f7dc6857de33392688d4fd75c357694738bdaf0fcac8e" [label="chmod +x /usr/local/bin/rest-proxy-docker.sh" shape="box"];
  "sha256:13037b7e77b48681be274a2f1eafef63b001212f7c62e13bbdbd42a72af9f559" [label="sha256:13037b7e77b48681be274a2f1eafef63b001212f7c62e13bbdbd42a72af9f559" shape="plaintext"];
  "sha256:bb81a1bd1c089d0ee208684e44a06d3de2e27a445cbe94157c740c3e338ae2a3" -> "sha256:0a4101a6e36e2ebd3543c24ca22dfc1c50d889852bf54a275780b6e89a3b3c85" [label=""];
  "sha256:eb348e375eee19918415865a12a87d12f0e29d32d521a144ced74359aaaffa29" -> "sha256:0a4101a6e36e2ebd3543c24ca22dfc1c50d889852bf54a275780b6e89a3b3c85" [label=""];
  "sha256:0a4101a6e36e2ebd3543c24ca22dfc1c50d889852bf54a275780b6e89a3b3c85" -> "sha256:fecc2008b274d95a4e9cedadb9df85361ab2e8df0230a25024c80e089f8e3e2a" [label=""];
  "sha256:fecc2008b274d95a4e9cedadb9df85361ab2e8df0230a25024c80e089f8e3e2a" -> "sha256:4192c36172aa41775b5f7dc6857de33392688d4fd75c357694738bdaf0fcac8e" [label=""];
  "sha256:4192c36172aa41775b5f7dc6857de33392688d4fd75c357694738bdaf0fcac8e" -> "sha256:13037b7e77b48681be274a2f1eafef63b001212f7c62e13bbdbd42a72af9f559" [label=""];
}

