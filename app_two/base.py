from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker


USERNAME = "admin"
PASSWORD = "admin"
HOST = "localhost"
DB_NAME = "ashok"

engine = create_engine("postgresql+psycopg2://{}:{}@{}/{}".format(USERNAME, PASSWORD, HOST, DB_NAME))
Session = sessionmaker(bind=engine)

Base = declarative_base()
