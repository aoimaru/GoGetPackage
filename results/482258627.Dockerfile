[app/sources/482258627.Dockerfile]
digraph {
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" [label="local://context" shape="ellipse"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:9dcf04b47c24e4de78cbe3abccc8bbf7324a4ac07d17327b8ac05f39ae5dc0f8" [label="copy{src=/conf/atomic/prometheus/help.1, dest=/help.1}" shape="note"];
  "sha256:f908ebabbd3f2ca7bb6a43bdceb751fc259bdbc21f49a9ce0744f46a9bc207f3" [label="copy{src=/conf/atomic/prometheus/help.md, dest=/help.md}" shape="note"];
  "sha256:a71e7849dda257b112e30c2f51c6e7dfbb1883f574a67097f7086534bdcd6a05" [label="copy{src=/conf/licenses, dest=/licenses}" shape="note"];
  "sha256:755d81b336109796351a1dc685601a6f47dc1c4900cfe02be6419be103ac6d4b" [label="/bin/sh -c rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm   && yum -y --enablerepo=rhel-7-server-ose-3.11-rpms update   && yum -y install     bind-utils     gettext     hostname     procps-ng   && yum clean all -y" shape="box"];
  "sha256:9d0b4844abe9a88343111b2545e5813cba23198c44d853d90123e6c82d4391c2" [label="/bin/sh -c mkdir -p /data /conf /opt/cpm/bin /opt/cpm/conf" shape="box"];
  "sha256:7e802ef9703d1e4180ab135d007fda167b589ff96dffadbbf867e324f9763b90" [label="copy{src=/prometheus.tar.gz, dest=/opt/cpm/bin}" shape="note"];
  "sha256:18169cba36e47a2df08e220e9953dc9f573867046ce42ecaac052d109077739f" [label="copy{src=/bin/prometheus, dest=/opt/cpm/bin}" shape="note"];
  "sha256:3457e418013c9263d9c5e7a9ff569e889c423f943b961601f6650694fc1ccd96" [label="copy{src=/bin/common, dest=/opt/cpm/bin}" shape="note"];
  "sha256:c6a145a0533ff300e823abed9a9ac5e037739776467cdc1162acaaeabb5e40d2" [label="copy{src=/conf/prometheus, dest=/opt/cpm/conf}" shape="note"];
  "sha256:89cf5c8874d27002baf1e820f4eb36815bf321eb9cdf16d1b4cfee1c2650e1b0" [label="/bin/sh -c chown -R 2:0 /opt/cpm /data &&     chmod -R g=u /opt/cpm /data" shape="box"];
  "sha256:cdbc8a0f21ebb440c05dfd38730221e7c95e5c4f0850e19470ccad54bc8ce366" [label="/bin/sh -c chmod g=u /etc/passwd" shape="box"];
  "sha256:bbf453796008b806e11fbff628da829bb995a6bc0da4c9b293698174855c5cdd" [label="sha256:bbf453796008b806e11fbff628da829bb995a6bc0da4c9b293698174855c5cdd" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:9dcf04b47c24e4de78cbe3abccc8bbf7324a4ac07d17327b8ac05f39ae5dc0f8" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:9dcf04b47c24e4de78cbe3abccc8bbf7324a4ac07d17327b8ac05f39ae5dc0f8" [label=""];
  "sha256:9dcf04b47c24e4de78cbe3abccc8bbf7324a4ac07d17327b8ac05f39ae5dc0f8" -> "sha256:f908ebabbd3f2ca7bb6a43bdceb751fc259bdbc21f49a9ce0744f46a9bc207f3" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:f908ebabbd3f2ca7bb6a43bdceb751fc259bdbc21f49a9ce0744f46a9bc207f3" [label=""];
  "sha256:f908ebabbd3f2ca7bb6a43bdceb751fc259bdbc21f49a9ce0744f46a9bc207f3" -> "sha256:a71e7849dda257b112e30c2f51c6e7dfbb1883f574a67097f7086534bdcd6a05" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:a71e7849dda257b112e30c2f51c6e7dfbb1883f574a67097f7086534bdcd6a05" [label=""];
  "sha256:a71e7849dda257b112e30c2f51c6e7dfbb1883f574a67097f7086534bdcd6a05" -> "sha256:755d81b336109796351a1dc685601a6f47dc1c4900cfe02be6419be103ac6d4b" [label=""];
  "sha256:755d81b336109796351a1dc685601a6f47dc1c4900cfe02be6419be103ac6d4b" -> "sha256:9d0b4844abe9a88343111b2545e5813cba23198c44d853d90123e6c82d4391c2" [label=""];
  "sha256:9d0b4844abe9a88343111b2545e5813cba23198c44d853d90123e6c82d4391c2" -> "sha256:7e802ef9703d1e4180ab135d007fda167b589ff96dffadbbf867e324f9763b90" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:7e802ef9703d1e4180ab135d007fda167b589ff96dffadbbf867e324f9763b90" [label=""];
  "sha256:7e802ef9703d1e4180ab135d007fda167b589ff96dffadbbf867e324f9763b90" -> "sha256:18169cba36e47a2df08e220e9953dc9f573867046ce42ecaac052d109077739f" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:18169cba36e47a2df08e220e9953dc9f573867046ce42ecaac052d109077739f" [label=""];
  "sha256:18169cba36e47a2df08e220e9953dc9f573867046ce42ecaac052d109077739f" -> "sha256:3457e418013c9263d9c5e7a9ff569e889c423f943b961601f6650694fc1ccd96" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:3457e418013c9263d9c5e7a9ff569e889c423f943b961601f6650694fc1ccd96" [label=""];
  "sha256:3457e418013c9263d9c5e7a9ff569e889c423f943b961601f6650694fc1ccd96" -> "sha256:c6a145a0533ff300e823abed9a9ac5e037739776467cdc1162acaaeabb5e40d2" [label=""];
  "sha256:507b9c083ab831336711e5d67d255b5a52f50fb4b28530cb76a047c7dd8d79dc" -> "sha256:c6a145a0533ff300e823abed9a9ac5e037739776467cdc1162acaaeabb5e40d2" [label=""];
  "sha256:c6a145a0533ff300e823abed9a9ac5e037739776467cdc1162acaaeabb5e40d2" -> "sha256:89cf5c8874d27002baf1e820f4eb36815bf321eb9cdf16d1b4cfee1c2650e1b0" [label=""];
  "sha256:89cf5c8874d27002baf1e820f4eb36815bf321eb9cdf16d1b4cfee1c2650e1b0" -> "sha256:cdbc8a0f21ebb440c05dfd38730221e7c95e5c4f0850e19470ccad54bc8ce366" [label=""];
  "sha256:cdbc8a0f21ebb440c05dfd38730221e7c95e5c4f0850e19470ccad54bc8ce366" -> "sha256:bbf453796008b806e11fbff628da829bb995a6bc0da4c9b293698174855c5cdd" [label=""];
}

