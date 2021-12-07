#FROM 22011974/norway-docker-base
FROM python:3.8-buster

RUN wget -q http://fsl.fmrib.ox.ac.uk/fsldownloads/fslinstaller.py && \
    chmod 775 fslinstaller.py && \
    python2 /fslinstaller.py -d /opt/fsl -V 6.0.4 -q && \
    rm -f /fslinstaller.py

RUN rm -rf /opt/fsl/fslpython && \
   /opt/fsl/etc/fslconf/fslpython_install.sh -f /opt/fsl 
   
ADD requirements.txt /stage/requirements.txt
RUN pip3 install -r /stage/requirements.txt
