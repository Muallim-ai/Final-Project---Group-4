FROM python:3.11.7-slim

LABEL maintainer="Group 4 - Final Statistics Project"
LABEL version="1.0"
LABEL description="Reproducible environment for statistics final project using Jupyter"

# Update system and install essentials
RUN apt-get update -y && apt-get install -y gcc build-essential libpq-dev graphviz

# Upgrade pip
RUN pip install --upgrade pip

# Install Python dependencies with specific versions
RUN pip install numpy==1.26.3
RUN pip install pandas==2.2.0
RUN pip install seaborn==0.13.2
RUN pip install matplotlib==3.8.2
RUN pip install jupyter==1.0.0
RUN pip install scikit-learn==1.4.0
RUN pip install statsmodels==0.14.1
RUN pip install plotly==5.18.0
RUN pip install tqdm==4.66.2

# Set working directory inside container
WORKDIR /home/notebooks/

# Copy the entire notebooks folder into the container
COPY notebooks/ /home/notebooks/

# Expose Jupyter port
EXPOSE 8888

# Start Jupyter Notebook server
CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''"]