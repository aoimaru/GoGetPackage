[app/sources/252769086.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:813f8128215e2fc69cc238b3fd74bf65d6e8ac80595b095a7c513f808c78e1c2" [label="/bin/sh -c apt-get -qqy install curl" shape="box"];
  "sha256:f926e3edd9e92f4132ce58de911bacbf56f8b0e97cb16e75ca40dd0ac0f42e5d" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3" shape="box"];
  "sha256:ccd71b42a4788412915712f217a633664decab0226c81efccb1665e31c7b85d4" [label="/bin/sh -c curl -sSL https://get.rvm.io | bash -s stable --ruby" shape="box"];
  "sha256:2036bf8d99568731f1036787388e763cf9c0a9eaa35c356ab86ff08116387683" [label="sha256:2036bf8d99568731f1036787388e763cf9c0a9eaa35c356ab86ff08116387683" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" [label=""];
  "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" -> "sha256:813f8128215e2fc69cc238b3fd74bf65d6e8ac80595b095a7c513f808c78e1c2" [label=""];
  "sha256:813f8128215e2fc69cc238b3fd74bf65d6e8ac80595b095a7c513f808c78e1c2" -> "sha256:f926e3edd9e92f4132ce58de911bacbf56f8b0e97cb16e75ca40dd0ac0f42e5d" [label=""];
  "sha256:f926e3edd9e92f4132ce58de911bacbf56f8b0e97cb16e75ca40dd0ac0f42e5d" -> "sha256:ccd71b42a4788412915712f217a633664decab0226c81efccb1665e31c7b85d4" [label=""];
  "sha256:ccd71b42a4788412915712f217a633664decab0226c81efccb1665e31c7b85d4" -> "sha256:2036bf8d99568731f1036787388e763cf9c0a9eaa35c356ab86ff08116387683" [label=""];
}

