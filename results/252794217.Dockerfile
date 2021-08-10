[app/sources/252794217.Dockerfile]
digraph {
  "sha256:13372ca5b15cc939bc276816805716c2db84165195d4e1387ef3b435a87d3118" [label="docker-image://docker.io/amancevice/pandas:0.18.1-python3" shape="ellipse"];
  "sha256:05484c817c679f9e4fdbb23a8f9563bed1d02fe0bfb782f962055b958e51414c" [label="/bin/sh -c apk add \\--no-cache curl libffi-dev cyrus-sasl-dev mariadb-dev postgresql-dev && pip3 install superset==$SUPERSET_VERSION mysqlclient==1.3.7 ldap3==2.1.1 psycopg2==2.6.1 redis==2.10.5 sqlalchemy-redshift==0.5.0" shape="box"];
  "sha256:b04f24e825fecc12e4eb9a7fdda8ea4ffe7303fb9729c220d95a62d896f0bb71" [label="mkdir{path=/home/superset}" shape="note"];
  "sha256:de1a4926237fee9b4fc5e9102ab12bcf11b7a760298fdf3499ebdd1291d58ca6" [label="local://context" shape="ellipse"];
  "sha256:ef51af1070b7357373bba126f8d62439680be6876907ba06266019d0aee0fb21" [label="copy{src=/superset, dest=/home/superset/}" shape="note"];
  "sha256:c02dbddb59eeac83bea9e935018f0fa168e827ef16d5b160c4274befe5c7483f" [label="/bin/sh -c addgroup superset && adduser -h /home/superset -G superset -D superset && chown -R superset:superset /home/superset" shape="box"];
  "sha256:65c6775020ea770f88bf65d078db4fadf40bf060e28c33b3f9a05004f0b9d512" [label="sha256:65c6775020ea770f88bf65d078db4fadf40bf060e28c33b3f9a05004f0b9d512" shape="plaintext"];
  "sha256:13372ca5b15cc939bc276816805716c2db84165195d4e1387ef3b435a87d3118" -> "sha256:05484c817c679f9e4fdbb23a8f9563bed1d02fe0bfb782f962055b958e51414c" [label=""];
  "sha256:05484c817c679f9e4fdbb23a8f9563bed1d02fe0bfb782f962055b958e51414c" -> "sha256:b04f24e825fecc12e4eb9a7fdda8ea4ffe7303fb9729c220d95a62d896f0bb71" [label=""];
  "sha256:b04f24e825fecc12e4eb9a7fdda8ea4ffe7303fb9729c220d95a62d896f0bb71" -> "sha256:ef51af1070b7357373bba126f8d62439680be6876907ba06266019d0aee0fb21" [label=""];
  "sha256:de1a4926237fee9b4fc5e9102ab12bcf11b7a760298fdf3499ebdd1291d58ca6" -> "sha256:ef51af1070b7357373bba126f8d62439680be6876907ba06266019d0aee0fb21" [label=""];
  "sha256:ef51af1070b7357373bba126f8d62439680be6876907ba06266019d0aee0fb21" -> "sha256:c02dbddb59eeac83bea9e935018f0fa168e827ef16d5b160c4274befe5c7483f" [label=""];
  "sha256:c02dbddb59eeac83bea9e935018f0fa168e827ef16d5b160c4274befe5c7483f" -> "sha256:65c6775020ea770f88bf65d078db4fadf40bf060e28c33b3f9a05004f0b9d512" [label=""];
}

