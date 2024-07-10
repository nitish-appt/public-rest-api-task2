 

# Use node.js LTS version as the base image 
FROM node:18.9.0
# Set working directory inside the container 
# Copy package.json and package-lock.json to the container 
COPY package.json . 
# Install dependencies 
RUN yarn install
COPY . . 
# Copy the rest of the application code to the container 
# RUN yarn run build
# Expose the port that your app runs on 
EXPOSE 5000 
# Command to run the app 



# FROM node:18.9.0 as build3 
# WORKDIR /app2 
# COPY --from=build1 /app/dist /app2/dist 
# COPY --from=build1 /app/node_modules /app2/node_modules 
# COPY --from=build1 /app/package.json /app2/package.json 
# CMD ["node","--experimental-specifier-resolution=node","/app2/dist/index.js"] 
CMD ["yarn", "start"]
