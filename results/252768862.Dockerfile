[app/sources/252768862.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:4de2cd6e2a50384ee0c69009b840d2907f8cbafdc171056099a4e84deb7985eb" [label="/bin/sh -c apk add -U python curl ca-certificates && cd /tmp && curl -LO https://bootstrap.pypa.io/get-pip.py && python /tmp/get-pip.py && pip install radicale" shape="box"];
  "sha256:dbf1d563915284e924e02baff0957964dce836f997da589e4451a577fcda8bff" [label="/bin/sh -c adduser -h /home/radicale -D -s /bin/sh radicale && mkdir -p /home/radicale/.config && mkdir -p /data && ln -s /data /home/radicale/.config/radicale && chown -R radicale /data && chown -R radicale /home/radicale" shape="box"];
  "sha256:54aa586581352c1fce9d44a2db265b8479000740cd8aa14da0376ec6dfce06bf" [label="mkdir{path=/home/radicale}" shape="note"];
  "sha256:ead561d727d07416c524bbfc59b9d9384b06c0c94ad8b03a67c55c14609a047e" [label="sha256:ead561d727d07416c524bbfc59b9d9384b06c0c94ad8b03a67c55c14609a047e" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:4de2cd6e2a50384ee0c69009b840d2907f8cbafdc171056099a4e84deb7985eb" [label=""];
  "sha256:4de2cd6e2a50384ee0c69009b840d2907f8cbafdc171056099a4e84deb7985eb" -> "sha256:dbf1d563915284e924e02baff0957964dce836f997da589e4451a577fcda8bff" [label=""];
  "sha256:dbf1d563915284e924e02baff0957964dce836f997da589e4451a577fcda8bff" -> "sha256:54aa586581352c1fce9d44a2db265b8479000740cd8aa14da0376ec6dfce06bf" [label=""];
  "sha256:54aa586581352c1fce9d44a2db265b8479000740cd8aa14da0376ec6dfce06bf" -> "sha256:ead561d727d07416c524bbfc59b9d9384b06c0c94ad8b03a67c55c14609a047e" [label=""];
}

