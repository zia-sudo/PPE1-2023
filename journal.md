Le 20/09/2023 - #Séance1

On a revu les principales commandes Bash (--help et man seront mes amis) et on a crée le journal sur Github.

Le 27/09/2023 - #Séance2

Pendant le cours, on a essayé créé une clé SSH (une clé pulique et une privée) pour Git, à l'aide de "ssh-keygen -t ed25519" de première vue, ça a l'air bien complexe. Nous avons également appris à clone des dépôts, à actualiser le dépôt, tout ça a été compris sur le moment, mais à pratiquer. 

J'ai essayé de faire l'exercice "Fichiers", je me suis rendue compte que j'ai encore un peu de difficultés avec les commandes Bash car j'ai encore besoin de vérifier leur utilité et utilisation (à part pour les commandes cd et ls). Les commandes utilisées pour l'exercice sont "mv", "mkdir", "cd", "ls". Avec cet exercice, je me sens un peu mieux avec ces commandes utilsées, mais à revoir de temps en temps pour ne pas oublier. Avec "mkdir", j'ai appris qu'on peut créer plusieurs répertoires à la fois. Pour déplacer les images dans le bon dossier, au début j'ai mis Pairs*, mais cela sélectionne seulement les fichiers nommés Paris_... mais pas tous ceux qui contiennet le nom "Paris", en fait il faut utiliser "*Paris*".

Le 04/10/2023 - #Séance3

Une séance bien chargée,c'est costaud. Quand les profs expliquent les commandes pour annuler les commits, j'ai compris mais quant à la mise en pratique dans les exos, je suis perdue! L'utlisation de la commande git reset pour annuler le commit était bonne, mais le reste est à encore comprendre/maitriser.

Le 09/10/2023 - Exercice Git

J'ai essayé de le faire mais je pense qu'il y a encore des confusions. Mais j'ai réussi à modifier mon journal depuis le terminal (nano).

Le 11/10/2023 - Séance 4

Je pense avoir compris l'utilisation de Git, surtout de Git tag car pour les trois première séances je mettais manuellement les tags sur Github mais maintenant j'ai compris que c'est grâce à la commande git tag -a -m "". Je vais donc essayer de faire un tag après avoir édité le journal du jour.
Durant la 1ère partie de la séance, nous avons corrigé les exercices Git.
git log #affiche l'historique des commits dans votre dépôt Git
git revert <commit_hash> #annuler un commit spécifique
git reset HEAD-1 #si pas push, défaire le dernier commit sans le pousser vers le dépôt distant

A la deuxième partie du cours, nous avons vu les pipelines et la redirection vers des fichiers. On s'est entraîné, de ce fait, sur les commandes cat, wc ainsi que les chevrons(simple ou double).

On a ensuite essayé de faire des scripts Shell pour ensuite l'appeler. 



