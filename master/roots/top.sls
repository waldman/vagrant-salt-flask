#
# Salt top.sls file
#

# Base
base:
    '*':
        - default
        
    'webapp':
        - nginx
        - supervisord
        - gunicorn
        - python-flask