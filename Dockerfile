FROM jupyter/datascience-notebook:latest

# Copy the dataset into the container
# Copy the notebook
COPY books.csv /home/jovyan/work/books.csv
COPY  my-jupyter-notebook.ipynb  /home/jovyan/work/my-jupyter-notebook.ipynb

# Set the working directory
WORKDIR /home/jovyan/work

EXPOSE 9843

# Command to run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
