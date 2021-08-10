[app/sources/234868679.Dockerfile]
digraph {
  "sha256:75b632346ba2b8f9016dc18a2f00e68c155e4bad6ee57e204e866f316a6586e4" [label="docker-image://docker.io/peterevans/xenial-gcloud:1.2.7" shape="ellipse"];
  "sha256:d9053e537f7345020e228c7b800cfe71bd3c2acb64250424756b81989a08249f" [label="/bin/sh -c apt-get -y update  && apt-get install -y -qq --no-install-recommends     build-essential     cmake     curl     libbz2-dev     libstxxl-dev     libstxxl1v5     libxml2-dev     libzip-dev     libboost-all-dev     lua5.2     liblua5.2-dev     libtbb-dev     libluabind-dev     pkg-config  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:ab71a7be256e3d316a959ae80e25dcb536a6069588de620ee6520288ed3dd4da" [label="/bin/sh -c mkdir /osrm-src  && cd /osrm-src  && curl --silent -L https://github.com/Project-OSRM/osrm-backend/archive/v$OSRM_VERSION.tar.gz -o v$OSRM_VERSION.tar.gz  && tar xzf v$OSRM_VERSION.tar.gz  && cd osrm-backend-$OSRM_VERSION  && mkdir build  && cd build  && cmake .. -DCMAKE_BUILD_TYPE=Release  && cmake --build .  && cmake --build . --target install  && mkdir /osrm-data  && mkdir /osrm-profiles  && cp -r /osrm-src/osrm-backend-$OSRM_VERSION/profiles/* /osrm-profiles  && rm -rf /osrm-src" shape="box"];
  "sha256:8de6e60517e01b9281e432798e1c1e18103fede861bb8286615cb7326ce5c668" [label="local://context" shape="ellipse"];
  "sha256:00f8f471df6ed6f7c651b629b6074d23f0566a826607753d4d4a78997daf2531" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:658587f2a12f31c208ebff44bd5cd6016170efe36cb917012b709a29ff0c6edf" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:c7fb094764032d664317956da7e58e4a94bc46a0e9684458891de2c77e0d0302" [label="sha256:c7fb094764032d664317956da7e58e4a94bc46a0e9684458891de2c77e0d0302" shape="plaintext"];
  "sha256:75b632346ba2b8f9016dc18a2f00e68c155e4bad6ee57e204e866f316a6586e4" -> "sha256:d9053e537f7345020e228c7b800cfe71bd3c2acb64250424756b81989a08249f" [label=""];
  "sha256:d9053e537f7345020e228c7b800cfe71bd3c2acb64250424756b81989a08249f" -> "sha256:ab71a7be256e3d316a959ae80e25dcb536a6069588de620ee6520288ed3dd4da" [label=""];
  "sha256:ab71a7be256e3d316a959ae80e25dcb536a6069588de620ee6520288ed3dd4da" -> "sha256:00f8f471df6ed6f7c651b629b6074d23f0566a826607753d4d4a78997daf2531" [label=""];
  "sha256:8de6e60517e01b9281e432798e1c1e18103fede861bb8286615cb7326ce5c668" -> "sha256:00f8f471df6ed6f7c651b629b6074d23f0566a826607753d4d4a78997daf2531" [label=""];
  "sha256:00f8f471df6ed6f7c651b629b6074d23f0566a826607753d4d4a78997daf2531" -> "sha256:658587f2a12f31c208ebff44bd5cd6016170efe36cb917012b709a29ff0c6edf" [label=""];
  "sha256:658587f2a12f31c208ebff44bd5cd6016170efe36cb917012b709a29ff0c6edf" -> "sha256:c7fb094764032d664317956da7e58e4a94bc46a0e9684458891de2c77e0d0302" [label=""];
}

