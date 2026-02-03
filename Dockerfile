FROM nginx:stable-alpine

# Remove any default content
RUN rm -rf /usr/share/nginx/html/*

# Copy only the necessary files
COPY index.html /usr/share/nginx/html/index.html
COPY ryavDeck.pdf /usr/share/nginx/html/ryavDeck.pdf

# Ensure permissions are correct
RUN chmod 644 /usr/share/nginx/html/index.html /usr/share/nginx/html/ryavDeck.pdf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
