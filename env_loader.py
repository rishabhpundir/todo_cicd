from dotenv import load_dotenv
import os

def load_env_file():
    dotenv_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), '.env')
    load_dotenv(dotenv_path=dotenv_path, override=True)

