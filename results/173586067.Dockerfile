[app/sources/173586067.Dockerfile]
digraph {
  "sha256:553e910cef88b374969a3aedd8350437b97e9e301f82acf2839dc0e7e8556f76" [label="docker-image://docker.io/sdthirlwall/raspberry-pi-cross-compiler:latest" shape="ellipse"];
  "sha256:516bc9d027e0c3c691e5e476e14a8e9bd36460e848664b916738201999ec2c56" [label="/bin/sh -c install-debian --update gettext" shape="box"];
  "sha256:9baebd1a6f349e5ae70c5d0c740cdd1182f6ea263320f283d711f0c01b1f8b11" [label="/bin/sh -c install-raspbian --update libssl-dev" shape="box"];
  "sha256:5080dd9e55c6a414c65a14c4db38e0b15b18fa9548cdc84628b9cc2c0c995e66" [label="sha256:5080dd9e55c6a414c65a14c4db38e0b15b18fa9548cdc84628b9cc2c0c995e66" shape="plaintext"];
  "sha256:553e910cef88b374969a3aedd8350437b97e9e301f82acf2839dc0e7e8556f76" -> "sha256:516bc9d027e0c3c691e5e476e14a8e9bd36460e848664b916738201999ec2c56" [label=""];
  "sha256:516bc9d027e0c3c691e5e476e14a8e9bd36460e848664b916738201999ec2c56" -> "sha256:9baebd1a6f349e5ae70c5d0c740cdd1182f6ea263320f283d711f0c01b1f8b11" [label=""];
  "sha256:9baebd1a6f349e5ae70c5d0c740cdd1182f6ea263320f283d711f0c01b1f8b11" -> "sha256:5080dd9e55c6a414c65a14c4db38e0b15b18fa9548cdc84628b9cc2c0c995e66" [label=""];
}

