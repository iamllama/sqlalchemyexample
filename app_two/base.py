from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker


# engine = create_engine("postgresql-psycopg2://admin:admin@localhost/ashok")
engine = create_engine("postgresql+psycopg2://admin:admin@localhost/ashok")
Session = sessionmaker(bind=engine)

Base = declarative_base()