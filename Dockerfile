FROM mcr.microsoft.com/playwright:v1.48.0-jammy
WORKDIR /test
RUN npx -y playwright@1.48.0 install --with-deps
# Install dotenv module
RUN npm install dotenv
CMD ["npx", "playwright", "test"]
