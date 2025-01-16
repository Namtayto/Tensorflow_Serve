# Use TensorFlow Serving base image
FROM tensorflow/serving:2.10.0

# Set the working directory
WORKDIR /models

# Copy the model directory into the container
COPY Malicious_URL_Prediction /models/Malicious_URL_Prediction

# Set environment variable for model base path
ENV MODEL_NAME=Malicious_URL_Prediction

# Expose the port that TensorFlow Serving will use
EXPOSE 8080

# Start TensorFlow Serving with the model
ENTRYPOINT ["tensorflow_model_server", "--rest_api_port=8080", "--model_name=Malicious_URL_Prediction", "--model_base_path=/models/Malicious_URL_Prediction"]
