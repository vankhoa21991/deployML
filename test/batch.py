from sklearn import datasets
from joblib import load
import numpy as np

import os, sys
os.chdir(sys.path[0])

from datetime import datetime

fname = "predictions_" + datetime.now().strftime("%Y_%m_%d-%I_%M_%S_%p") + ".csv"

X, y = datasets.load_iris(return_X_y=True)
clf = load('svc_model.model')
preds = clf.predict(X)
print ("Predictions: ")
print (preds)
np.savetxt(fname,preds, delimiter=',')