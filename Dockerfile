FROM ibmcom/websphere-traditional:9.0.5.6

COPY web-app-2/target/web-app-2_1.0-SNAPSHOT.war /tmp/web-app-2_1.0-SNAPSHOT.war
COPY install.py /tmp/install.py

RUN /opt/IBM/WebSphere/AppServer/profiles/$PROFILE_NAME/bin/wsadmin.sh \
    -lang jython \
    -f /tmp/install.py \
    -conntype NONE
