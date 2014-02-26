#
# Salt top.sls file
#

# Base
base:
    '*':
        - default
        
    'webapp':
        - nginx
        - supervisor
        - gunicorn
        - python-flask
        - webapp