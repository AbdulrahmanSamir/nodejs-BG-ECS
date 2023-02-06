FROM public.ecr.aws/eag/nodejs:16-build

# Create a directory for the application and set it as the working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the package.json file to the image
COPY package.json .

# Install the required dependencies
RUN npm install

# Copy the rest of the application code to the image
COPY . .

# Expose the port that the application is listening on
EXPOSE 3030

# Specify the command to run when the container starts
CMD ["npm", "start"]
