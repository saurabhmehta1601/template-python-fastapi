# Template Python FastAPI
This repository serves the purpose of template repository for creating APIs using FastAPI framework in python ecosystem.


### Using the template

#### Accessing the repository code
You can directly use this template by clicking on `use this template` button from the GitHub UI next to `fork` button or you can clone this repo locally.

#### Installing the dependencies

1. Firstly create a virtual environment using python  with command
    ```bash
    python -m venv venv
    ```

This will create a folder called `venv` containing your virtual environment.


2. Install dependencies in the virtual environment with command:
    ```bash
    venv/bin/python -m pip install -r requirements.txt
    ```

#### Running the application 

*  Running with uvicorn
    ```
    uvicorn src.main:app --reload
    ```
Alternatively, in order to skip writting whole command you can use `rav` CLI to run scripts defined in `rav.yaml`

* Install rav CLI globally using command:
    ```
    pip install rav
    ```
* Now using rav CLI run script `runserver` from rav.yaml:
    ```
    rav run server
    ```

#### Customizing the rav scripts

You can customize the scripts defined in rav.yaml

* In the script `build-docker-image` shown below, you can replace my-fastapi-template-app with the name of your applcation.
    ```
    docker build -t my-fastapi-template-app . 
    ```

### Features of this template

* Hot reloading application in development with uvicorn. 
* Support for running application inside docker container.
* Support for running unit tests with pytest.
* Automate running scripts with rav CLI.

