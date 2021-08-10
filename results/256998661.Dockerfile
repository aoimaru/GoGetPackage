[app/sources/256998661.Dockerfile]
digraph {
  "sha256:90d2df9ed43e7f780bd523802bc9be730cb8307e24801e63985243674722a5ef" [label="docker-image://docker.io/reponame/php:7.3-apache_buildnumber" shape="ellipse"];
  "sha256:7071c439afaf136053690be56a9d17308d2cfecb1104916e1feed3158f7f1131" [label="/bin/sh -c yes | pecl install xdebug-beta     && echo \"zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)\" > /usr/local/etc/php/conf.d/xdebug.ini     && echo \"xdebug.remote_enable=on\" >> /usr/local/etc/php/conf.d/xdebug.ini     && echo \"xdebug.remote_autostart=off\" >> /usr/local/etc/php/conf.d/xdebug.ini     && echo \"xdebug.profiler_output_dir=/home/LogFiles\" >> /usr/local/etc/php/conf.d/xdebug.ini" shape="box"];
  "sha256:7bd8dc8d57902876df1783c20ab8107371e4086a715483b323e94ea74a90e810" [label="sha256:7bd8dc8d57902876df1783c20ab8107371e4086a715483b323e94ea74a90e810" shape="plaintext"];
  "sha256:90d2df9ed43e7f780bd523802bc9be730cb8307e24801e63985243674722a5ef" -> "sha256:7071c439afaf136053690be56a9d17308d2cfecb1104916e1feed3158f7f1131" [label=""];
  "sha256:7071c439afaf136053690be56a9d17308d2cfecb1104916e1feed3158f7f1131" -> "sha256:7bd8dc8d57902876df1783c20ab8107371e4086a715483b323e94ea74a90e810" [label=""];
}

