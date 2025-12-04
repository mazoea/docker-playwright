FROM mcr.microsoft.com/playwright:v1.56.1-jammy
WORKDIR /test
RUN npx -y playwright@1.56.1 install --with-deps && \
    npm install -g @playwright/test dotenv
USER pwuser
RUN npx playwright --version
CMD ["npx", "playwright", "test"]
