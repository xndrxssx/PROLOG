%fatos

dino(tiranossauroRex, teropodes, cretaceo).
dino(albertosaurus, teropodes, cretaceo).
dino(acrocantossauro, teropodes, cretaceo).
dino(ceratossauro, teropodes, jurassico).
dino(velociraptor, teropodes, cretaceo).
dino(argentinossauro, sauropodes, cretaceo).
dino(braquiossauro, sauropodes, jurassico).
dino(girafatita, sauropodes, jurassico).
dino(diabloceratops, ceratopsideos, cretaceo).
dino(estegossauro, ornitisquios, jurassico).
dino(kentrosaurus, ornitisquios, jurassico).
dino(escolosauro, anquilossauros, cretaceo).
dino(nodossauro, reptil, triassico).
dino(ankylosaurus, anquilossauros, cretaceo).
dino(pteranodonte, pterossauros, cretaceo).
dino(tupandactilo, pterossauros, cretaceo).
dino(entelodonte, artiodactilos, mioceno).
dino(titanoboa, reptil, paleoceno).
dino(belzebufo, reptil, cretaceo).
dino(purussaurus, reptil, mioceno).


mais_antigo(jurassico, cretaceo).
mais_antigo(triassico, jurassico).
mais_antigo(viseano, triassico).
mais_antigo(cretaceo, paleoceno).
mais_antigo(paleoceno, eoceno).
mais_antigo(eoceno, mioceno).
mais_antigo(mioceno, paleolitico).

maisRapido(velociraptor, pteranodonte).
maisRapido(pteranodonte, tupandactilo).
maisRapido(tupandactilo, beelzebufo).
maisRapido(beelzebufo, ceratossauro).
maisRapido(ceratossauro, anquilossauro).
maisRapido(ceratossauro, estegossauro).
maisRapido(anquilossauro, nodossauro).
maisRapido(nodossauro, kentrossauro).
maisRapido(kentrossauro,braquiossauro).
maisRapido(braquiossauro, acrocantossauro).
maisRapido(acrocantossauro, girafatita).
maisRapido(acroncatossauro, escolossauro).
maisRapido(escolossauro,albertosaurus).
maisRapido(albertosaurus,diabloceratops).
maisRapido(diabloceratops,argentinossauro).
maisRapido(diabloceratops,tiranossauro_rex).

altura(tiranossauro-rex, 4).
altura(albertosaurus, 3).
altura(acrocantossauro, 3.5).
altura(ceratossauro, 5.5).
altura(velociraptor, 1).
altura(argentinossauro, 20).
altura(braquiossauro,18).
altura(girafatita, 12).
altura(diabloceratops, 5.5).
altura(estegossauro, 4).
altura(kentrosaurus, 2).
altura(escolosauro, 5.6).
altura(nodossauro,1.7).
altura(ankylosaurus, 1.7).
altura(pteranodonte, 2).
altura(tupandactilo, 1.8).
altura(titanoboa,14.7).
altura(belzebufo, 0.4).
altura(purussaurus, 10).

%velocidades

speed(tiranossauro_rex, 102).
speed(albertosaurus, 106). 
speed(acrocantossauro, 110). 
speed(ceratossauro,119).
speed(velociraptor,132).
speed(argentinossauro,102). 
speed(braquiossauro,111). 
speed(girafatita,107). 
speed(diabloceratops,104). 
speed(estegossauro,116). 
speed(kentrossauro,112).
speed(escolossauro,107). 
speed(nodossauro,115).
speed(anquilossauro,116). 
speed(pteranodonte,127). 
speed(tupandactilo,126). 
speed(titanoboa,115). 
speed(beelzebufo,125). 
speed(purussauro,111). 



veio_antes(X,Y):- dino(X,_,A), dino(Y,_,B), mais_antigo(A,B).
veio_antes(X,Y):- dino(X,_,A), dino(Z,_,C), mais_antigo(A,C), veio_antes(Z,Y).


maisVeloz(X,Y):- maisRapido(X,Y).
maisVeloz(X,Y):- maisRapido(X,Z), maisVeloz(Z,Y).