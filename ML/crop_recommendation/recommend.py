import pandas as pd
import numpy as np
import json
import sys

jsonn = sys.argv[1]
jsonp = sys.argv[2]
jsonk = sys.argv[3]
jsont = sys.argv[4]
jsonh = sys.argv[5]
jsonph = sys.argv[6]
jsonr = sys.argv[7]

n_params = json.loads(jsonn)
p_params = json.loads(jsonp)
k_params = json.loads(jsonk)
t_params = json.loads(jsont)
h_params = json.loads(jsonh)
ph_params = json.loads(jsonph)
r_params = json.loads(jsonr)

dataset = pd.read_csv('')

X = dataset.iloc[:, :-1].values
y = dataset.iloc[:, -1].values

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)

from sklearn.ensemble import RandomForestClassifier
classifier = RandomForestClassifier(n_estimators = 10, criterion = 'entropy', random_state = 0)
classifier.fit(X_train, y_train)

user_input = np.array([[n_params,p_params,k_params,t_params,h_params,ph_params,r_params]])


predictions = classifier.predict(user_input)


print(str(predictions[0]))
