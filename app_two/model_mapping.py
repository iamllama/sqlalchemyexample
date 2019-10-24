from sqlalchemy import Column, String, Integer, Float, Date
from sqlalchemy.orm import relationship
from app_two.base import Base


class BH_CONFIGURATION_DETAIL(Base):
    __tablename__ = "bh_configuration_detail"
    bh_configuration_detail_id = Column(Integer, primary_key=True)
    bh_configuration_header_id = Column(Integer)
    configuration_name = Column(String)
    business_topic = Column(String)
    business_attribute = Column(String)
    business_attribute_value = Column(String)
    business_attribute_range_min = Column(Float)
    business_attribute_range_max = Column(Float)
    data_type = Column(String)
    output_value = Column(String)
    effective_date = Column(Date)
    expiration_date = Column(Date)
    hint = Column(String)
    org_id  = Column(Integer)
