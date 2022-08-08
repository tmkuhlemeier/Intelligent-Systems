spiegel(leaf(X),leaf(X)).
spiegel(tree(B1,B2),tree(C1,C2)):-spiegel(C1,B2),spiegel(C2,B1).





