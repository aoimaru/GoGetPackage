[app/sources/389672873.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:8fab24dc8472154c517da2ac83a996be9e191ec9a812eda3af50ce0d756c2235" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:662bed4e8cd63d7cad5791b4183768f5f08cd60de3066de28a8458432e9a0463" [label="/bin/sh -c apt-get install -y curl bsdtar" shape="box"];
  "sha256:9efd9a7507679a3f51b437aedf2c5f7b6164629bd7d79b66fff3e4ce3d91b22d" [label="/bin/sh -c useradd -m virgo" shape="box"];
  "sha256:44daf4e9cd53d2f34296f7374433d366eb7a69af4610caa07188a8bb50bc5a15" [label="/bin/sh -c curl -L 'http://www.eclipse.org/downloads/download.php?file=/virgo/release/VP/3.6.4.RELEASE/virgo-tomcat-server-3.6.4.RELEASE.zip&mirror_id=580&r=1' | bsdtar --strip-components 1 -C /home/virgo -xzf -" shape="box"];
  "sha256:6f19c8baa8873588972c1eabf30efbe4e49b3a4c83dabad507a8d3ab90a08b98" [label="/bin/sh -c chmod u+x /home/virgo/bin/*.sh" shape="box"];
  "sha256:1a748112293163df0d486e17a7c6e244f5e5a4e057fc5c0a4a2a68552e02cbfa" [label="/bin/sh -c chown -R virgo:virgo /home/virgo" shape="box"];
  "sha256:a7ee6ccc0ac3446bf7091b0d9105ccdf1ebf2d53d519258680e129dbb716568d" [label="sha256:a7ee6ccc0ac3446bf7091b0d9105ccdf1ebf2d53d519258680e129dbb716568d" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:8fab24dc8472154c517da2ac83a996be9e191ec9a812eda3af50ce0d756c2235" [label=""];
  "sha256:8fab24dc8472154c517da2ac83a996be9e191ec9a812eda3af50ce0d756c2235" -> "sha256:662bed4e8cd63d7cad5791b4183768f5f08cd60de3066de28a8458432e9a0463" [label=""];
  "sha256:662bed4e8cd63d7cad5791b4183768f5f08cd60de3066de28a8458432e9a0463" -> "sha256:9efd9a7507679a3f51b437aedf2c5f7b6164629bd7d79b66fff3e4ce3d91b22d" [label=""];
  "sha256:9efd9a7507679a3f51b437aedf2c5f7b6164629bd7d79b66fff3e4ce3d91b22d" -> "sha256:44daf4e9cd53d2f34296f7374433d366eb7a69af4610caa07188a8bb50bc5a15" [label=""];
  "sha256:44daf4e9cd53d2f34296f7374433d366eb7a69af4610caa07188a8bb50bc5a15" -> "sha256:6f19c8baa8873588972c1eabf30efbe4e49b3a4c83dabad507a8d3ab90a08b98" [label=""];
  "sha256:6f19c8baa8873588972c1eabf30efbe4e49b3a4c83dabad507a8d3ab90a08b98" -> "sha256:1a748112293163df0d486e17a7c6e244f5e5a4e057fc5c0a4a2a68552e02cbfa" [label=""];
  "sha256:1a748112293163df0d486e17a7c6e244f5e5a4e057fc5c0a4a2a68552e02cbfa" -> "sha256:a7ee6ccc0ac3446bf7091b0d9105ccdf1ebf2d53d519258680e129dbb716568d" [label=""];
}

