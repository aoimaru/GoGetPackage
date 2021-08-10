[app/sources/363544488.Dockerfile]
digraph {
  "sha256:bb94f3427f83acc0fa8fa56712d9fdd2cc1a26b2264b1bea18660fbca3774388" [label="docker-image://docker.io/lablup/kernel-base-python-minimal:3.6-alpine" shape="ellipse"];
  "sha256:a15d8f0731ffc34a05ab86d227dfdfad43cea99db879d852e3e6c605f26c1d18" [label="/bin/sh -c apt install build-base     && pip install --no-cache-dir matplotlib bokeh     && pip install --no-cache-dir ipython     && pip install --no-cache-dir pandas     && apt-get remove --purge -y gcc g++     && apt-get autoremove -y     && rm -f /tmp/*.whl" shape="box"];
  "sha256:b7678f3a240b68906c7d5cdb9504a0da829a616c0ba38c5ff232b8ee2b2ab05d" [label="local://context" shape="ellipse"];
  "sha256:88bd2f29fbb1f06de412b4b8cca7f176078367d8a86f80526979632e5509c183" [label="copy{src=/Make.user, dest=/tmp/}" shape="note"];
  "sha256:02121a713b382fc146f87c5bf0727dced3cb7eedb0199df63f456d8adbb99ef4" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends ca-certificates curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:74fb8b10286ddefb96b26ec67ed8d04a49e8ae1f1900a7c36fe6c6fe5b371f9f" [label="/bin/sh -c set -ex;     dpkgArch=\"$(dpkg --print-architecture)\";     case \"${dpkgArch##*-}\" in         amd64) tarArch='x86_64'; dirArch='x64'; sha256='3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41' ;;         armhf) tarArch='arm'; dirArch='arm'; sha256='7515f5977b2aac0cea1333ef249b3983928dee76ea8eb3de9dd6a7cdfbd07d2d' ;;         i386) tarArch='i686'; dirArch='x86'; sha256='bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a' ;;         *) echo >&2 \"error: current architecture ($dpkgArch) does not have a corresponding Julia binary release\"; exit 1 ;;     esac;         curl -fL -o julia.tar.gz     \"https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz\";     curl -fL -o julia.tar.gz.asc \"https://julialang-s3.julialang.org/bin/linux/${dirArch}/${JULIA_VERSION%[.-]*}/julia-${JULIA_VERSION}-linux-${tarArch}.tar.gz.asc\";         echo \"${sha256} *julia.tar.gz\" | sha256sum -c -;         export GNUPGHOME=\"$(mktemp -d)\";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$JULIA_GPG\";     gpg --batch --verify julia.tar.gz.asc julia.tar.gz;     rm -rf \"$GNUPGHOME\" julia.tar.gz.asc;         mkdir \"$JULIA_PATH\";     tar -xzf julia.tar.gz -C \"$JULIA_PATH\" --strip-components 1;     rm julia.tar.gz" shape="box"];
  "sha256:23a9099e1c81dca15424ba029b1d93d3c9615212707689c977b7594ab6514c82" [label="/bin/sh -c pip install --no-cache-dir \"backend.ai-kernel-runner[julia]~=1.4.0\"" shape="box"];
  "sha256:67fd6e3dd0093ab05f8616d06544bcf2a71ea3419110c868b8fbb71d1ef2f7e2" [label="/bin/sh -c mkdir /home/backend.ai/.matplotlib" shape="box"];
  "sha256:4032b553abeeb81f1a66cf28f290d769ba47f6da48d58ea68f9fb4311609dc3f" [label="copy{src=/matplotlibrc, dest=/home/backend.ai/.matplotlib/}" shape="note"];
  "sha256:1866b17a8d27f03f1b7875fb51f9e6b9e6c575d5b750a12fdcab0006c9ce485b" [label="/bin/sh -c echo 'import matplotlib.pyplot' > /tmp/matplotlib-fontcache.py     && python /tmp/matplotlib-fontcache.py     && rm /tmp/matplotlib-fontcache.py" shape="box"];
  "sha256:1793f25d0003588eed54a2400b29eb90547f51e803b12af5611906b038c64cfe" [label="copy{src=/IJuliaEmul.jl, dest=/home/backend.ai/IJuliaEmul.jl}" shape="note"];
  "sha256:363acfb2c5424ede24ef247eaa76960caf18da7e0a94eda8e7b8d0d195557eda" [label="copy{src=/package.jl, dest=/home/backend.ai/package.jl}" shape="note"];
  "sha256:ede103b894aeca02f884cb7bd2470a5c6566c825c74b1e1f487f6d9219729ae6" [label="copy{src=/precompile.jl, dest=/home/backend.ai/precompile.jl}" shape="note"];
  "sha256:bbeb19e9ee7cda5408c4382d37b7a1f4801fab0fab1f40935a53d54bccd3e1a6" [label="/bin/sh -c julia /home/backend.ai/package.jl" shape="box"];
  "sha256:9eafd98347771192495a454efe40132027788b18a72fe67253cf6ec13ab09140" [label="/bin/sh -c julia /home/backend.ai/precompile.jl" shape="box"];
  "sha256:4be001e3155db796b03ccc39522292cfa362a060e3b3ea688fb6e79a493be761" [label="sha256:4be001e3155db796b03ccc39522292cfa362a060e3b3ea688fb6e79a493be761" shape="plaintext"];
  "sha256:bb94f3427f83acc0fa8fa56712d9fdd2cc1a26b2264b1bea18660fbca3774388" -> "sha256:a15d8f0731ffc34a05ab86d227dfdfad43cea99db879d852e3e6c605f26c1d18" [label=""];
  "sha256:a15d8f0731ffc34a05ab86d227dfdfad43cea99db879d852e3e6c605f26c1d18" -> "sha256:88bd2f29fbb1f06de412b4b8cca7f176078367d8a86f80526979632e5509c183" [label=""];
  "sha256:b7678f3a240b68906c7d5cdb9504a0da829a616c0ba38c5ff232b8ee2b2ab05d" -> "sha256:88bd2f29fbb1f06de412b4b8cca7f176078367d8a86f80526979632e5509c183" [label=""];
  "sha256:88bd2f29fbb1f06de412b4b8cca7f176078367d8a86f80526979632e5509c183" -> "sha256:02121a713b382fc146f87c5bf0727dced3cb7eedb0199df63f456d8adbb99ef4" [label=""];
  "sha256:02121a713b382fc146f87c5bf0727dced3cb7eedb0199df63f456d8adbb99ef4" -> "sha256:74fb8b10286ddefb96b26ec67ed8d04a49e8ae1f1900a7c36fe6c6fe5b371f9f" [label=""];
  "sha256:74fb8b10286ddefb96b26ec67ed8d04a49e8ae1f1900a7c36fe6c6fe5b371f9f" -> "sha256:23a9099e1c81dca15424ba029b1d93d3c9615212707689c977b7594ab6514c82" [label=""];
  "sha256:23a9099e1c81dca15424ba029b1d93d3c9615212707689c977b7594ab6514c82" -> "sha256:67fd6e3dd0093ab05f8616d06544bcf2a71ea3419110c868b8fbb71d1ef2f7e2" [label=""];
  "sha256:67fd6e3dd0093ab05f8616d06544bcf2a71ea3419110c868b8fbb71d1ef2f7e2" -> "sha256:4032b553abeeb81f1a66cf28f290d769ba47f6da48d58ea68f9fb4311609dc3f" [label=""];
  "sha256:b7678f3a240b68906c7d5cdb9504a0da829a616c0ba38c5ff232b8ee2b2ab05d" -> "sha256:4032b553abeeb81f1a66cf28f290d769ba47f6da48d58ea68f9fb4311609dc3f" [label=""];
  "sha256:4032b553abeeb81f1a66cf28f290d769ba47f6da48d58ea68f9fb4311609dc3f" -> "sha256:1866b17a8d27f03f1b7875fb51f9e6b9e6c575d5b750a12fdcab0006c9ce485b" [label=""];
  "sha256:1866b17a8d27f03f1b7875fb51f9e6b9e6c575d5b750a12fdcab0006c9ce485b" -> "sha256:1793f25d0003588eed54a2400b29eb90547f51e803b12af5611906b038c64cfe" [label=""];
  "sha256:b7678f3a240b68906c7d5cdb9504a0da829a616c0ba38c5ff232b8ee2b2ab05d" -> "sha256:1793f25d0003588eed54a2400b29eb90547f51e803b12af5611906b038c64cfe" [label=""];
  "sha256:1793f25d0003588eed54a2400b29eb90547f51e803b12af5611906b038c64cfe" -> "sha256:363acfb2c5424ede24ef247eaa76960caf18da7e0a94eda8e7b8d0d195557eda" [label=""];
  "sha256:b7678f3a240b68906c7d5cdb9504a0da829a616c0ba38c5ff232b8ee2b2ab05d" -> "sha256:363acfb2c5424ede24ef247eaa76960caf18da7e0a94eda8e7b8d0d195557eda" [label=""];
  "sha256:363acfb2c5424ede24ef247eaa76960caf18da7e0a94eda8e7b8d0d195557eda" -> "sha256:ede103b894aeca02f884cb7bd2470a5c6566c825c74b1e1f487f6d9219729ae6" [label=""];
  "sha256:b7678f3a240b68906c7d5cdb9504a0da829a616c0ba38c5ff232b8ee2b2ab05d" -> "sha256:ede103b894aeca02f884cb7bd2470a5c6566c825c74b1e1f487f6d9219729ae6" [label=""];
  "sha256:ede103b894aeca02f884cb7bd2470a5c6566c825c74b1e1f487f6d9219729ae6" -> "sha256:bbeb19e9ee7cda5408c4382d37b7a1f4801fab0fab1f40935a53d54bccd3e1a6" [label=""];
  "sha256:bbeb19e9ee7cda5408c4382d37b7a1f4801fab0fab1f40935a53d54bccd3e1a6" -> "sha256:9eafd98347771192495a454efe40132027788b18a72fe67253cf6ec13ab09140" [label=""];
  "sha256:9eafd98347771192495a454efe40132027788b18a72fe67253cf6ec13ab09140" -> "sha256:4be001e3155db796b03ccc39522292cfa362a060e3b3ea688fb6e79a493be761" [label=""];
}

