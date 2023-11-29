FROM nginx:1.21.6

COPY nginx.conf /etc/nginx/
COPY start.sh /launch/

RUN chown -R nginx:nginx /launch/ \
	&& chmod -R 755 /launch \
	&& chown -R nginx:nginx /var/cache/nginx \
	&& chown -R nginx:nginx /var/log/nginx \
	&& chown -R nginx:nginx /etc/nginx \
	&& touch /var/run/nginx.pid \
	&& chown -R nginx:nginx /var/run/nginx.pid
    
USER nginx
    
WORKDIR /launch/
    
ENTRYPOINT [ "./start.sh" ]

