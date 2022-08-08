travel(X,Y,go(X,Y)):- byCar(X,Y).
travel(X,Y,go(X,Y)):- byTrain(X,Y).
travel(X,Y,go(X,Y)):- byPlane(X,Y).
travel(X,Y,go(X,Z,Q)):- byCar(X,Z), travel(Z,Y,Q).
travel(X,Y,go(X,Z,Q)):- byTrain(X,Z), travel(Z,Y,Q).
travel(X,Y,go(X,Z,Q)):- byPlane(X,Z), travel(Z,Y,Q).




