# Global base configs for all boxes

# Set swappiness to 1, the lowest value possible to prevent swap use.
vm.swappiness:
  sysctl.present:
    - value: 1

# Set the default timezone to UTC
UTC:
  timezone.system:
    - utc: True

# Install packages on all servers.
global packages:
    pkg.installed:
        - pkgs:
            - mosh
            - zsh
            - htop
            - curl
            - rsync

# Install Ubuntu / Debian specific packages
{% if grains["os"] in ["Debian", "Ubuntu"] %}
deb packages:
    pkg.installed:
        - pkgs:
            - nfs-common
{% endif %}