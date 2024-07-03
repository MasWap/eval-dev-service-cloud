## Nom : LAYRAC
## Prénom : Lilian

# Start

Démarrer le déploiement avec la commande deploy.sh, cela va générer le conteneur minikube, les pods
Disponible a l'URL http://monapi:31000/test

# Développement et services cloud

### Quelle est la différence entre un service ClusterIP et NodePort sous Kubernetes ?

- **ClusterIP :** C’est le type de service par défaut. Un service de type ClusterIP attribue une adresse IP virtuelle interne au cluster Kubernetes. Cette adresse IP est accessible uniquement à l'intérieur du cluster. Les pods peuvent communiquer entre eux via cette adresse IP interne, mais elle n'est pas accessible depuis l'extérieur du cluster.

- **NodePort :** Un service de type NodePort attribue un port statique sur chaque nœud (node) du cluster Kubernetes. Ce port est accessible depuis l'extérieur du cluster Kubernetes. Lorsque du trafic arrive sur ce port, il est redirigé vers le service et ensuite vers les pods cibles via le mécanisme de translation de port (port forwarding).

### Quel type de scaling je choisirai pour une BDD ? Et pourquoi ?

Le choix du type de scaling pour une base de données dépend de plusieurs facteurs critiques, notamment la charge attendue, les besoins en termes de disponibilité, de performances et de coûts.

- **Vertical Scaling :** Augmenter la capacité d’une seule instance de base de données en ajoutant plus de CPU, de mémoire RAM ou en utilisant des disques plus rapides. Convient lorsque la charge de travail de la base de données peut être gérée par une seule instance avec des ressources amplement suffisantes. Idéal pour les charges de travail qui ne nécessitent pas une énorme évolutivité horizontale.

- **Horizontal Scaling :** Distribuer la charge de travail sur plusieurs instances de base de données, généralement via la réplication et le partitionnement des données. Recommandé lorsque la charge de travail est élevée ou croissante et nécessite une répartition de la charge sur plusieurs serveurs pour maintenir les performances et la disponibilité. Permet également de réduire les risques de panne unique en introduisant la redondance.

- **Sharding :** Technique avancée de partitionnement des données où des portions de données sont stockées sur plusieurs serveurs distincts (shards). Utile pour les applications avec une énorme quantité de données où le partitionnement horizontal est nécessaire pour maintenir des performances optimales. Cependant, cela peut introduire une complexité supplémentaire dans la gestion des données et des requêtes.

Pour une base de données critique où la montée en charge est prévue ou où la disponibilité est essentielle, le scaling horizontal est généralement préférable. Cela permet de répartir la charge sur plusieurs instances, réduisant ainsi les goulets d'étranglement et améliorant la résilience du système. En revanche, le scaling vertical peut être approprié dans les premières étapes du développement d'une application ou lorsque les exigences en termes de charge et de performances sont prévisibles et peuvent être gérées par une seule instance de base de données plus puissante.

### Pour quelles raisons choisir un cloud privé plutôt que publique ?

Choisir un cloud privé plutôt qu'un cloud public offre un contrôle total sur l'infrastructure, améliore la sécurité, garantit des performances prévisibles et réduit la latence. Cela permet également une personnalisation adaptée aux besoins spécifiques, assure la conformité réglementaire et peut être économiquement avantageux à long terme pour des charges de travail stables.

### Dans quel cas prendre une instance AWS réservée ? Et quel est l’interêt ?

Les instances AWS réservées sont recommandées pour des charges de travail stables et prévisibles sur le long terme, offrant des économies importantes par rapport aux instances à la demande. Elles assurent une stabilité des coûts, une capacité dédiée et sont adaptées aux projets avec budget limité nécessitant une prévisibilité budgétaire.
