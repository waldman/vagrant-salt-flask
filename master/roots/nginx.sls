#
# Nginx SLS file
#

nginx:
    pkg:
        - installed

    service:
        - running
        - watch:
          - file: /etc/nginx/sites-enabled/default