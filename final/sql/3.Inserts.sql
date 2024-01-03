-- Datos de ejemplo
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("x","e5fa44f2b31c1fb553b6021e7360d07d5d91ff5e","b026324c6");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("queso","7448d8798a4380162d4b56f9b452e2f6f9e24e7a","26ab0db90");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("tomate","a3db5c13ff90a36963278c6a39e4ee3c22e2a436","6d7fce9fe");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("TheLegend27","9c6b057a2b9d96a4067a749ee3b3b0158d390cf1","48a24b70a");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("EXtremeExploit","5d9474c0309b7ca09a182d888f73b37a8fe1362c","1dcca2335");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("elreptiliano","ccf271b7830882da1791852baeca1737fcbe4b90","9ae0ea9e3");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("pedrito","d3964f9dad9f60363c81b688324d95b4ec7c8038","84bc3da1b");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("flutterbat","136571b41aa14adc10c5f3c987d43c02c8f5d498","c30f74727");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("discord","b6abd567fa79cbe0196d093a067271361dc6ca8b","7c5aba41f");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("jesse","4143d3a341877154d6e95211464e1df1015b74bd","31d30eea8");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("heisenberg","dd71038f3463f511ee7403dbcbc87195302d891c","166d77ac1");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("twi_twi","ad552e6dc057d1d825bf49df79d6b98eba846ebe","2737b4925");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("nico","feee44ad365b6b1ec75c5621a0ad067371102854","aa6ed9e0f");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("littleshy","030514d80869744a4e2f60d2fd37d6081f5ed01a","367764329");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("sunshine","587b596f04f7db9c2cad3d6b87dd2b3a05de4f35","8c9eb686b");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("vari","3596ea087bfdaf52380eae441077572ed289d657","5b6b41ed9");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("coaster","ad48103e4fc71796e9708cafc43adeed0d1076b7","4d095eeac");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("Anon","24b9c1f3fddff79893e5304f998f2f95ebebd149","0d07d5d91");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("AnonFilly","ba9f376fa71904ccde2a756a24a4e47ec014ee0a","6f9e24e7a");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("john","c15f47cace1e4948ac3ccdd3489d249b99a1b026","cf6a52053");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("capcom","745d8d7470846da22a9cc096dc19671b16215df5","5aa8301da");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("illinois","fbea1350da5283f2e89cc2669635731281202371","ff7f2c85a");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("enderman","468749f28902b501d9b00d76b32562ac7f9e14b8","929ad9494");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("snek","592d58131f564a5ecc4fdf0eeb530a1dd0786d34","4df969991");


INSERT INTO Generos (`id_user`, `gender`) VALUES (8, "Mujer");
INSERT INTO Generos (`id_user`, `gender`) VALUES (10, "caos");
INSERT INTO Generos (`id_user`, `gender`) VALUES (11, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (12, "Yegua");
INSERT INTO Generos (`id_user`, `gender`) VALUES (13, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (15, "Mujer");
INSERT INTO Generos (`id_user`, `gender`) VALUES (16, "Hombre");

INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (8, "Equestrian Enigma: The Mystery of the Missing Elements","When the Elements of Harmony vanish without a trace, Ponyville is plunged into chaos. Twilight Sparkle and her friends must unravel the mysterious disappearance, facing challenges that test the very essence of their friendship. Can they solve the enigma and restore peace to their beloved land?", '2013-12-02 14:22:11' );
INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (5, "Beyond the Everfree: Exploring the Unknown in Ponyville","An ancient legend awakens curiosity in Ponyville, leading Twilight Sparkle and her friends to explore the mysterious realms beyond the Everfree Forest. As they encounter new creatures and face unforeseen challenges, the ponies learn valuable lessons about trust, bravery, and the magic that lies beyond their familiar borders.",'2013-09-28 04:17:47' );
INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (5, "Twilight's Legacy: Passing the Torch of Friendship","Twilight Sparkle, now a wise and experienced ruler, contemplates her legacy as the Princess of Friendship. When a new generation of ponies emerges, Twilight must pass on the torch of friendship, guiding the young ones through their own adventures. Together, they discover the timeless values that make Equestria a land of everlasting harmony.",'2021-03-16 18:31:31' );

INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(18, 1, "Primero", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(19, 1, "Segundo", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(8, 1, "Muy bueno.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(5, 1, "Twilight como siempre la GOAT.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(8, 2, "Basadisimo el que hizo esto.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(5, 2, "All my homies love the everfree forest.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(8, 3, "No te puedo creer que le paso toda la responsabilidad a Cozy Glow.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(5, 3, "Re vieja twilight.", NOW());

