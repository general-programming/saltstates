{% for localmount, remote in pillar.get("nfsmount", {}).items() %}
{{ localmount }}:
    mount.mounted:
        - device: {{ remote.server }}:{{ remote.mountpoint }}
        - fstype: nfs4
        - opts: {{ remote.options }}
        - dump: 0
        - pass_num: 0
        - persist: True
        - mount: True
{% endfor %}