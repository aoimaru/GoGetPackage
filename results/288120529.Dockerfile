[app/sources/288120529.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label="mkdir{path=/app}" shape="note"];
  "sha256:b74918d329ec50677d59762356465689b04d87353f2111a3acd7aa6aa8930e2f" [label="local://context" shape="ellipse"];
  "sha256:89cfd309e51407323a8e135e0c73e726849a89884b83374e673fb6f1429e0886" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:ee0fad285ef5d19ff691599016127d13deac8ecbd467be4701c5edf9eabb4aeb" [label="/bin/sh -c apt-get update && apt-get install -y     gcc     libfreetype6-dev     libpng-dev     libpq-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:420f583e1abf54acf03242f90ffee8887c0c1498ee3895b8735810620f2aca40" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:2c2d8af409806ebb963fab1f7a80ce40d60096b1105a098a897e769fe22ba50e" [label="/bin/sh -c wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh     && chmod +x ./wait-for-it.sh     && mv wait-for-it.sh /usr/bin/wait-for-it" shape="box"];
  "sha256:d489f11fec7d7e43652a5b4483ad1190468f1666a4b96360a0d341838c2dbbd7" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/${DOCKERIZE_FILE}     && tar -C /usr/local/bin -xzvf ${DOCKERIZE_FILE}     && rm ${DOCKERIZE_FILE}" shape="box"];
  "sha256:322606bb9c9b1cf0498743d730e9f8314d7b9002db60e1ac93f1c60251d8e0c6" [label="sha256:322606bb9c9b1cf0498743d730e9f8314d7b9002db60e1ac93f1c60251d8e0c6" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label=""];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" -> "sha256:89cfd309e51407323a8e135e0c73e726849a89884b83374e673fb6f1429e0886" [label=""];
  "sha256:b74918d329ec50677d59762356465689b04d87353f2111a3acd7aa6aa8930e2f" -> "sha256:89cfd309e51407323a8e135e0c73e726849a89884b83374e673fb6f1429e0886" [label=""];
  "sha256:89cfd309e51407323a8e135e0c73e726849a89884b83374e673fb6f1429e0886" -> "sha256:ee0fad285ef5d19ff691599016127d13deac8ecbd467be4701c5edf9eabb4aeb" [label=""];
  "sha256:ee0fad285ef5d19ff691599016127d13deac8ecbd467be4701c5edf9eabb4aeb" -> "sha256:420f583e1abf54acf03242f90ffee8887c0c1498ee3895b8735810620f2aca40" [label=""];
  "sha256:420f583e1abf54acf03242f90ffee8887c0c1498ee3895b8735810620f2aca40" -> "sha256:2c2d8af409806ebb963fab1f7a80ce40d60096b1105a098a897e769fe22ba50e" [label=""];
  "sha256:2c2d8af409806ebb963fab1f7a80ce40d60096b1105a098a897e769fe22ba50e" -> "sha256:d489f11fec7d7e43652a5b4483ad1190468f1666a4b96360a0d341838c2dbbd7" [label=""];
  "sha256:d489f11fec7d7e43652a5b4483ad1190468f1666a4b96360a0d341838c2dbbd7" -> "sha256:322606bb9c9b1cf0498743d730e9f8314d7b9002db60e1ac93f1c60251d8e0c6" [label=""];
}

