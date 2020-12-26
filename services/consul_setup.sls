# Sets up a basic consul local.json and creates the /var/lib/consul folder for Docker to use.

/etc/consul/local.json:
    file.managed:
        - user: root
        - group: root
        - mode: 0644
        - source: salt://templates/consul_local.template
        - template: jinja

/var/lib/consul:
    file.directory:
        - user: 1000
        - group: 1000
        - mode: 755
        - makedirs: True
