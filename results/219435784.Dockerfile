[app/sources/219435784.Dockerfile]
digraph {
  "sha256:736921d0791e900c47626e3eb9c79f1a5bc57e995c0fdbef975d9b771c1c696e" [label="local://context" shape="ellipse"];
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" [label="docker-image://docker.io/phusion/baseimage:0.9.16" shape="ellipse"];
  "sha256:101a056e3c62102d4cb8162dd48f32584763a8dd4e9987a91ec7d028677d46c5" [label="copy{src=/certs, dest=/etc/certs}" shape="note"];
  "sha256:19fc96b149039574172b09f5f4733532be2e4fff6652e76919810c04ba15bce1" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu trusty main universe multiverse restricted\" > /etc/apt/sources.list &&   echo \"deb http://archive.ubuntu.com/ubuntu trusty-security main universe multiverse restricted\" >> /etc/apt/sources.list &&   apt-get update &&   apt-get install -y wget apache2 libapache2-mod-fastcgi zile python-flup shibboleth-sp2-schemas libshibsp-dev libshibsp-doc libapache2-mod-shib2 opensaml2-tools" shape="box"];
  "sha256:a48a5a5635eab9e3d8b8fa6f4ec279f34b598e0878f4f30e5c618a067ad39cb0" [label="copy{src=/default-ssl.conf, dest=/etc/apache2/sites-available/default-ssl.conf}" shape="note"];
  "sha256:b53223b0645ac4bcc502066dde86200d6d4c30d518f95ebf2e446b28d03fd374" [label="copy{src=/000-default.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:a86612216b8371d03e074dbe838a4b4468052ae8286a38536ae63bbd05b614f2" [label="/bin/sh -c a2enmod rewrite && \ta2enmod fastcgi && \ta2enmod proxy && \ta2enmod proxy_http && \ta2enmod ssl && \ta2enmod shib2 && \ta2ensite default-ssl" shape="box"];
  "sha256:084154a2287c32baf751fd49c14035429645e1502e10457bb40e4820896331e9" [label="/bin/sh -c echo \"FastCGIExternalServer /var/www/seahub.fcgi -host seafile:8000\" >> /etc/apache2/apache2.conf" shape="box"];
  "sha256:f6a74b77ca0d0df7a4a2dae885208e19a6b17699d3d4562a2c0c6e16255c7cb0" [label="/bin/sh -c echo \"FastCGIExternalServer /var/www/seafdav.fcgi -host seafile:8080\" >> /etc/apache2/apache2.conf" shape="box"];
  "sha256:2aef1310fda3632edfe3f7c6b345cb5ef93eb39bdc6fb2bcc992faf53a390862" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:1c1a07edbf954546f50fc4b6dd9c8fdcd6f21ee805db70d80d582ac3820c62d3" [label="/bin/sh -c chmod 755 /run.sh" shape="box"];
  "sha256:c0cb96ac03805115ac1a5ee24d5d263e7a7343f0c707a40a532602ee08e95a23" [label="mkdir{path=/etc/apache2}" shape="note"];
  "sha256:80d170c6d9f154ee90574da962fb6c084258fe0688ea97a923ebcdc485f6e5dc" [label="sha256:80d170c6d9f154ee90574da962fb6c084258fe0688ea97a923ebcdc485f6e5dc" shape="plaintext"];
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" -> "sha256:101a056e3c62102d4cb8162dd48f32584763a8dd4e9987a91ec7d028677d46c5" [label=""];
  "sha256:736921d0791e900c47626e3eb9c79f1a5bc57e995c0fdbef975d9b771c1c696e" -> "sha256:101a056e3c62102d4cb8162dd48f32584763a8dd4e9987a91ec7d028677d46c5" [label=""];
  "sha256:101a056e3c62102d4cb8162dd48f32584763a8dd4e9987a91ec7d028677d46c5" -> "sha256:19fc96b149039574172b09f5f4733532be2e4fff6652e76919810c04ba15bce1" [label=""];
  "sha256:19fc96b149039574172b09f5f4733532be2e4fff6652e76919810c04ba15bce1" -> "sha256:a48a5a5635eab9e3d8b8fa6f4ec279f34b598e0878f4f30e5c618a067ad39cb0" [label=""];
  "sha256:736921d0791e900c47626e3eb9c79f1a5bc57e995c0fdbef975d9b771c1c696e" -> "sha256:a48a5a5635eab9e3d8b8fa6f4ec279f34b598e0878f4f30e5c618a067ad39cb0" [label=""];
  "sha256:a48a5a5635eab9e3d8b8fa6f4ec279f34b598e0878f4f30e5c618a067ad39cb0" -> "sha256:b53223b0645ac4bcc502066dde86200d6d4c30d518f95ebf2e446b28d03fd374" [label=""];
  "sha256:736921d0791e900c47626e3eb9c79f1a5bc57e995c0fdbef975d9b771c1c696e" -> "sha256:b53223b0645ac4bcc502066dde86200d6d4c30d518f95ebf2e446b28d03fd374" [label=""];
  "sha256:b53223b0645ac4bcc502066dde86200d6d4c30d518f95ebf2e446b28d03fd374" -> "sha256:a86612216b8371d03e074dbe838a4b4468052ae8286a38536ae63bbd05b614f2" [label=""];
  "sha256:a86612216b8371d03e074dbe838a4b4468052ae8286a38536ae63bbd05b614f2" -> "sha256:084154a2287c32baf751fd49c14035429645e1502e10457bb40e4820896331e9" [label=""];
  "sha256:084154a2287c32baf751fd49c14035429645e1502e10457bb40e4820896331e9" -> "sha256:f6a74b77ca0d0df7a4a2dae885208e19a6b17699d3d4562a2c0c6e16255c7cb0" [label=""];
  "sha256:f6a74b77ca0d0df7a4a2dae885208e19a6b17699d3d4562a2c0c6e16255c7cb0" -> "sha256:2aef1310fda3632edfe3f7c6b345cb5ef93eb39bdc6fb2bcc992faf53a390862" [label=""];
  "sha256:736921d0791e900c47626e3eb9c79f1a5bc57e995c0fdbef975d9b771c1c696e" -> "sha256:2aef1310fda3632edfe3f7c6b345cb5ef93eb39bdc6fb2bcc992faf53a390862" [label=""];
  "sha256:2aef1310fda3632edfe3f7c6b345cb5ef93eb39bdc6fb2bcc992faf53a390862" -> "sha256:1c1a07edbf954546f50fc4b6dd9c8fdcd6f21ee805db70d80d582ac3820c62d3" [label=""];
  "sha256:1c1a07edbf954546f50fc4b6dd9c8fdcd6f21ee805db70d80d582ac3820c62d3" -> "sha256:c0cb96ac03805115ac1a5ee24d5d263e7a7343f0c707a40a532602ee08e95a23" [label=""];
  "sha256:c0cb96ac03805115ac1a5ee24d5d263e7a7343f0c707a40a532602ee08e95a23" -> "sha256:80d170c6d9f154ee90574da962fb6c084258fe0688ea97a923ebcdc485f6e5dc" [label=""];
}

