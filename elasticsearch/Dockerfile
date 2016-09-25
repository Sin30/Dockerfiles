FROM elasticsearch:2.3.5

MAINTAINER Jason Guo "sin30.net@gmail.com"

COPY conf /usr/share/elasticsearch/config

RUN /usr/share/elasticsearch/bin/plugin install mobz/elasticsearch-head

RUN mkdir /usr/share/elasticsearch/plugins/analysis-ik \
	&& cd /usr/share/elasticsearch/plugins/analysis-ik \
	&& wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v1.9.5/elasticsearch-analysis-ik-1.9.5.zip \
	&& unzip elasticsearch-analysis-ik-1.9.5.zip \
	&& rm -fr elasticsearch-analysis-ik-1.9.5.zip