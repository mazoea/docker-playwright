FROM mcr.microsoft.com/playwright:v1.57.0-jammy
WORKDIR /test
RUN npx -y playwright@1.57.0 install --with-deps && \
    npm install -g @playwright/test dotenv
USER pwuser
RUN npx playwright --version
CMD ["npx", "playwright", "test"]
