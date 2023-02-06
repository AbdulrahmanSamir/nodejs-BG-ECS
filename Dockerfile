# From base image node
FROM public.ecr.aws/aws-containers/ecsdemo-nodejs:c3e96da

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copying all the files from your file system to container file system
COPY package.json .

#RUN yum update -y && yum install -y nodejs

# Install all dependencies
RUN npm install

# Copy other files too
COPY ./ .

# Expose the port
EXPOSE 3030

# Command to run app when intantiate an image
CMD ["npm","start"]
