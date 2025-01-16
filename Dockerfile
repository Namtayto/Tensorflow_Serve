# Use TensorFlow Serving base image
FROM tensorflow/serving:latest

# Expose the TensorFlow Serving REST API port
EXPOSE 8501

# Copy the saved model into the model directory for TensorFlow Serving
# The `--chown` option ensures the correct permissions
COPY Malicious_URL_Prediction /models/Malicious_URL_Prediction/1

# Specify the model name and version for TensorFlow Serving
ENV MODEL_NAME=Malicious_URL_Prediction

# Run TensorFlow Serving with the model
CMD ["--model_base_path=/models", "--model_name=Malicious_URL_Prediction"]