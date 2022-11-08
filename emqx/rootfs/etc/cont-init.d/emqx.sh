#!/command/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: EMQX
# Configures EMQX
# ==============================================================================
mkdir -p \
  /data/emqx/data \
  /data/emqx/etc \
  /data/emqx/log \
  /data/emqx/plugins

ln -s /data/emqx/log /opt/emqx/log
ln -s /etc/certs/cert.pem /ssl/$(bashio::config 'certfile')
ln -s /etc/certs/key.pem /ssl/$(bashio::config 'keyfile')
ln -s /etc/certs/cacert.pem /ssl/$(bashio::config 'certfile')
