FROM python:3.4.5-onbuild
ENV MCARCH_CONFIG prod_settings.cfg
CMD /usr/local/bin/gunicorn -w 4 -k gevent -b :5000 --log-file=- website:app
