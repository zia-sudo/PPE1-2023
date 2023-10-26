Le 20/09/2023 - #Séance1

On a revu les principales commandes Bash (--help et man seront mes amis) et on a crée le journal sur Github.

Le 27/09/2023 - #Séance2

Pendant le cours, on a essayé créé une clé SSH (une clé pulique et une privée) pour Git, à l'aide de "ssh-keygen -t ed25519" de première vue, ça a l'air bien complexe. Nous avons également appris à clone des dépôts, à actualiser le dépôt, tout ça a été compris sur le moment, mais à pratiquer. 

J'ai essayé de faire l'exercice "Fichiers", je me suis rendue compte que j'ai encore un peu de difficultés avec les commandes Bash car j'ai encore besoin de vérifier leur utilité et utilisation (à part pour les commandes cd et ls). Les commandes utilisées pour l'exercice sont "mv", "mkdir", "cd", "ls". Avec cet exercice, je me sens un peu mieux avec ces commandes utilsées, mais à revoir de temps en temps pour ne pas oublier. Avec "mkdir", j'ai appris qu'on peut créer plusieurs répertoires à la fois. Pour déplacer les images dans le bon dossier, au début j'ai mis Pairs*, mais cela sélectionne seulement les fichiers nommés Paris_... mais pas tous ceux qui contiennet le nom "Paris", en fait il faut utiliser "*Paris*".

Le 04/10/2023 - #Séance3

Une séance bien chargée,c'est costaud. Quand les profs expliquent les commandes pour annuler les commits, j'ai compris mais quant à la mise en pratique dans les exos, je suis perdue! L'utlisation de la commande git reset pour annuler le commit était bonne, mais le reste est à encore comprendre/maitriser.

Le 09/10/2023 - Exercice Git

J'ai essayé de le faire mais je pense qu'il y a encore des confusions. Mais j'ai réussi à modifier mon journal depuis le terminal (nano).

Le 11/10/2023 - #Séance 4

Je pense avoir compris l'utilisation de Git, surtout de Git tag car pour les trois première séances je mettais manuellement les tags dans le journal sur Github mais maintenant j'ai compris que c'est grâce à la commande git tag -a -m "". Je vais donc essayer de faire un tag après avoir édité le journal du jour.
Durant la 1ère partie de la séance, nous avons corrigé les exercices Git.
git log #affiche l'historique des commits dans votre dépôt Git
git revert <commit_hash> #annuler un commit spécifique
git reset HEAD-1 #si pas push, défaire le dernier commit sans le pousser vers le dépôt distant

A la deuxième partie du cours, nous avons vu les pipelines et la redirection vers des fichiers. On s'est entraîné, de ce fait, sur les commandes cat, wc ainsi que les chevrons(simple ou double).

On a ensuite essayé de faire des scripts Shell pour ensuite l'appeler.

Nous avons également discuté sur le mot que nous devons choisir pour le projet, il y a déjà eu quelques pistes: égalité, intelligence artificielle, etc.

Le 16/10/2023 - suite Git
Après plusieurs essais, je pense que j'ai maîtrisé le git tag. En fait, pour les autres fois après avoir utilisé "git tag -a '' -m ''", j'ai juste fait git push au lieu de git push origin NomduTag.

Le 18/10/2023 - #Séance 5

Notre groupe est composé de Perrine, Yuanlong et moi. Nous avons décidé de choisir le français, le chinois et l'anglais comme langues. Nous avons également réfléchi sur le choix de mots, nous avons fait deux listes de mots: Nous avons soigneusement réfléchi au choix des termes sur lesquels nous allons nous concentrer. Nous avons dressé une liste de mots potentiels dans différentes langues et domaines :    Dans le discours politique en français, chinois et anglais, nous envisageons d'explorer le concept de "liberté". Pour les rapports environnementaux, "réchauffement climatique" et "durabilité" sont des termes que nous considérons. Dans le contexte technologique, "intelligence artificielle" pourrait être une option intéressante. Pour les discussions sur l'égalité entre hommes et femmes, le mot "égalité" nous intrigue. Dans le monde des médias sociaux, "influenceur" est un terme à explorer. La notion de "vegan" dans la presse et les médias sociaux est également une possibilité."Télétravail" pourrait être pertinent dans le contexte actuel des médias et de la presse. Enfin, le terme "violence" est un sujet d'importance dans les médias et les réseaux sociaux. 
Nous comprenons que les termes "liberté" et "égalité" sont des choix courants, et nous souhaitons peut-être explorer des thèmes plus originaux. Nous sommes ouverts à d'autres suggestions, mais pour l'instant, ces mots constituent notre liste préliminaire.
La deuxième liste: Technologie (Technology, 技术) Environnement (Environment, 环境) genre les changements climatiques Santé (Health, 健康, Santé)  Éducation (Education, 教育) Économie (Economy, 经济) Immigration (Immigration, 移民) Cybersécurité (Cybersecurity, 网络安全) ou Cyberattaques (Cyberattacks, 网络攻击) Désinformation (Disinformation, 虚假信息)
Nous allons essayer de trouver le mot du projet assez rapidement.

Pendnat le cours, nous avons corrigé les exos portant sur les scripts exécutables. Nous avons également vu les instructions de contrôle, comme if, while, for. Nous avons également vu les différentes conditions possibles pour les insctructions conditionnelles. La validation des arguments nous permet de savoir si toutes les conditions sont réunies pour exécuter le script.
Dans la deuxième partie de la séance 5, nous avons vu les notions à propos du HTML et des codes HTTP. Nous avons également découvert lynx qui est un navigateur web en terminal qui permet également de récupéper une page web sous format txt. Exemple: lynx -dump plurital.org > ./Downloads/M1_TAL_S1/PPE/M1.txt.
Nous avons également vu la commande curl qui permet de faire la même chose que lynx, et elle permet également de donner des informations sur l'entête si la page est OK HTTP/1.1 XZY <message> et son encodage content-type: <informations>.

A propos de Git, je me suis plus à l'aise avec cet outil, add, push, commit, et tag etc.

Le 25/10/2023 - #Séance 6

Projet: après de longues hésitation et discusssion, nous avons adopté le mot "désinformation" (en anglais: disinformation, et en chinois: 虚假信息. Ce mot nous intéresse et que nous trouvons qu'il correspond bien à la situtauon actuelle (actualités). Après avoir choisi le mot, nous avons commencé à réfléchir sur le type de sites sur lequel nous allons travailler. Nous avons choisi les sites de presses.
Ensuite, pendant le cours, on a fait un mini projet qui est super utile pour le commencement du projet final.Ce mini projet permet de vérifier la validation de chaque lien récolté s'il est OK (HTTP) ou pas, et quel est son encodage (UTF-8) ou autre.
