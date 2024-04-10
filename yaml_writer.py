from ruamel.yaml import YAML
import os

data = {
    "secretGenerator": [
        {
            "name": "secret",
            "literals": [
                f"SECRET_KEY={os.environ.get('SECRET_KEY')}"
            ]
        },
        {
            "name": "pguser",
            "literals": [
                f"POSTGRES_USER={os.environ.get('POSTGRES_USER')}"
            ]
        },
        {
            "name": "pgdb",
            "literals": [
                f"POSTGRES_DB={os.environ.get('POSTGRES_DB')}"
            ]
        },
        {
            "name": "pgpass",
            "literals": [
                f"POSTGRES_PASSWORD={os.environ.get('POSTGRES_PASSWORD')}"
            ]
        },
        {
            "name": "dbport",
            "literals": [
                f"DB_PORT={os.environ.get('DB_PORT')}"
            ]
        },
        {
            "name": "dbhost",
            "literals": [
                f"DB_HOST={os.environ.get('DB_HOST')}"
            ]
        }
    ],
    "resources": [
        "postgres.yaml",
        "todoapp.yaml"
    ]
}

def write_env_yaml(data):
    try:
        yaml = YAML()
        yaml_file_path = "secrets.yml"

        with open(yaml_file_path, "w") as yaml_file:
            yaml.dump(data, yaml_file)

        return "YAML file has been overwritten successfully."
    except Exception as e:
        return f"An Error Occurred: {e}"

write_env_yaml(data=data)
