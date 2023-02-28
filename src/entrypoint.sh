sed "s,API_URL:.*\",API_URL:\"$API_URL\",g" /usr/share/nginx/html/env.js
nginx -g "daemon off;"