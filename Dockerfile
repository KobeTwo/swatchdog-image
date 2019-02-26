FROM debian:stable-slim
ENV BUILD_HOME /build

# Copy all files to build directory
RUN mkdir -p $BUILD_HOME
ADD install.sh $BUILD_HOME/

# setup the imgage
RUN $BUILD_HOME/install.sh

# Remove working directory
RUN rm -rf $BUILD_HOME


ENTRYPOINT ["swatch", "-t"]


