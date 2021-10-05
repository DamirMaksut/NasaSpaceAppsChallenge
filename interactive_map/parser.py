import netCDF4 as nc
import numpy as np
import json

fn = 'sauce/Sac1.nc4'
ds = nc.Dataset(fn)

lat = ds["lat"][:]
lon = ds["lon"][:]
mss = ds["mean_square_slope"][:]

print(lat.shape)
db = np.stack((lat, lon, mss), axis=1)
lst = list()
for row in db:
    lst.append({'lat' : str(row[0]), 'lon' : str(row[1]), 'mss' : str(row[2])})

with open("destination/dat1.json", "w") as write_file:
    json.dump(lst, write_file, indent=4)