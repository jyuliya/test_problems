import numpy as np
import pandas as pd
import time

csv = pd.read_csv('police-department-calls-for-service.csv')

from sqlalchemy import create_engine
engine = create_engine('postgresql://jyuliyareneva:password@localhost:5435/database', echo=True)

engine.execute('DROP TABLE police_department;')

start = time.clock()
csv.to_sql("police_department", engine)
end = time.clock()

result = engine.execute('SELECT COUNT(*) FROM police_department;')

print('Elapsed time: {}'.format(end-start))
for elem in result:
    print('Number of records: ', elem)