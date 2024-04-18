FROM mcr.microsoft.com/playwright:v1.43.1-jammy
WORKDIR /test
RUN npx -y playwright@1.43.1 install --with-deps && \
    npm install -g @playwright/test
CMD ["npx", "playwright", "test"]