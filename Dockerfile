FROM mcr.microsoft.com/playwright:v1.48.0-jammy
WORKDIR /test
RUN npx -y playwright@1.48.0 install --with-deps && npm install dotenv --production
CMD ["npx", "playwright", "test"]
