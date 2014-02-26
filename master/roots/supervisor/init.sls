#
# Supervisord SLS file
#

supervisor:
    pkg:
        - installed

    service:
        - running
        - watch:
          - file: /etc/supervisor/conf.d/*
          - file: /etc/supervisor/supervisor.conf

/etc/supervisor/supervisor.conf:
    file:
        - managed
        - source: salt://supervisor/files/supervisor.conf