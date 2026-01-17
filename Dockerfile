# 1. Use Node.js official image
FROM node:18

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package files first (for better caching)
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy remaining project files
COPY . .

# 6. Expose application port
EXPOSE 4000

# 7. Start the app
CMD ["node", "server.js"]
