#
# Nginx SLS file
#

nginx:
    pkg:
        - installed

    service:
        - running