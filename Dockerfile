# Use an official Node.js runtime as the base image
FROM public.ecr.aws/aws-containers/ecsdemo-nodejs:c3e96da

# Set the working directory in the image
WORKDIR /app

# Copy the package.json and package-lock.json to the image
COPY package*.json ./

# Install the required dependencies
RUN npm ci

# Copy the rest of the application code to the image
COPY . .

# Specify the command to run when the container starts
CMD ["npm", "start"]

# Expose the port that the application is listening on
EXPOSE 3030
