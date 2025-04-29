#STAT 315 Group Project - Group 4  
Contributors:  
1. Mohana Aljabri  
2. Jameel Muallim  
3. Hesham Alshahrani  

This repository contains the complete reproducible workflow for our STAT 315 final project. The analysis explores ticket sales and revenue trends using a multi-table dataset representing event transactions in 2008. All components of the analysis are included in a Jupyter Notebook, which is fully executable within a Docker container. The notebook includes data import, cleaning, merging, feature engineering, statistical resampling using the bootstrap method, and detailed visualizations with interpretation.

To ensure reproducibility, the repository includes all required data files, the notebook, a Dockerfile, and a requirements.txt file specifying exact package versions. The GitHub repository and Docker image allow for seamless replication and review of our findings.

------------------------------------------------------------  
HOW TO RUN THE NOTEBOOK  
------------------------------------------------------------  

You have two options to run the notebook using Docker (Windows Version):

Before you begin:
- Make sure Docker Desktop is installed from https://www.docker.com/products/docker-desktop  
- Open Docker Desktop and wait for it to be running  
- All following steps must be run in the **terminal**

------------------------------------------------------------  

OPTION 1: BUILD THE IMAGE LOCALLY  
1. Open your terminal  
2. Clone the repository:  
   git clone https://github.com/Muallim-ai/Final-Project---Group-4.git  
3. Navigate to the project folder:  
   cd Final-Project---Group-4  
4. Build the Docker image:  
   docker build -t stat315-final-project .  
5. Run the Docker container:  
   docker run -p 8888:8888 stat315-final-project  
6. After running, copy or click on the URL shown in your terminal (it will start with http://127.0.0.1:8888/tree or include a token)  
   Open it in your browser to access the notebook.

------------------------------------------------------------  

OPTION 2: PULL THE IMAGE FROM DOCKERHUB  
1. Open your terminal  
2. Pull the image from DockerHub:  
   docker pull muallim1/stat315-final-project  
3. Run the Docker container:  
   docker run -p 8888:8888 muallim1/stat315-final-project  
4. After running, copy or click on the URL shown in your terminal (it will start with http://127.0.0.1:8888/tree or include a token)  
   Open it in your browser to access the notebook.

Note: If the terminal displays a link with a token (e.g., `?token=abc123`), copy the **entire link** and paste it in your browser.