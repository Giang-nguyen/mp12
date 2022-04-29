FROM python:3.8

COPY MP12_PublicFiles/classify.py /mp12/classify.py
COPY MP12_PublicFiles/requirements.txt /mp12/requirements.txt

RUN \
  ln -s /usr/bin/python3 python; \
  cd /mp12; \
  pip install -r requirements.txt

RUN chmod a+rwx -R /mp12/

WORKDIR /mp12

ENTRYPOINT ["python", "classify.py"]
