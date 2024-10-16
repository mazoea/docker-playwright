FROM mcr.microsoft.com/playwright:v1.48.0-jammy
WORKDIR /test

# Copy the package.json and package-lock.json
COPY package.json /test/
COPY package-lock.json /test/
COPY playwright.config.ts /test/

RUN npx -y playwright@1.48.0 install --with-deps && \
    npm install dotenv --production
CMD ["npx", "playwright", "test"]
