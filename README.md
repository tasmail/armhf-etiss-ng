# Dockerfile to run mono application with armhf. 

How to run:
<pre>
docker run --restart=always --name etiss-ng -t -i -d --privileged -p 8080:8080 -v /opt/etiss:/opt/etiss -v /dev:/dev tasmail/armhf-etiss-ng
</pre>


