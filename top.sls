base:
    '*':
        - baseconfigs
        - services.nfsmount
    'G@roles:docker':
        - docker
        - services.consul_setup