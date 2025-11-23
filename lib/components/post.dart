import 'package:flutter/material.dart';
import 'package:instagram/components/commentSection.dart'; // Import du composant CommentSection
import 'package:instagram/model/comment.dart'; // Import du modèle Comment

// Définition du widget Post qui est Stateful pour gérer l'état (affichage des commentaires)
class Post extends StatefulWidget {
  Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

// La classe qui gère l'état du Post
class _PostState extends State<Post> {

  // Liste des posts avec leurs informations (image, pseudo, profil, couleur, commentaires)
  final List postsItems = [
    {
      "color": Colors.purple,
      "image": "assets/post/post2.png",
      "profile":"assets/profile/yyy.png",
      "pseudo":"lamine kama",
      "comments": [
        {"username":"daba","text":"Super post !","userImage":"assets/profile/yyy.png"},
        {"username":"lamine","text":"J'adore !","userImage":"assets/profile/ccc.png"},
      ]
    },
    {
      "color": Colors.purple,
      "image": "assets/post/post4.png",
      "profile":"assets/profile/eee.png",
      "pseudo":"lamine kama",
      "comments": [
        {"username":"daba","text":"Super post !","userImage":"assets/profile/yyy.png"},
        {"username":"lamine","text":"J'adore !","userImage":"assets/profile/ccc.png"},
      ]
    },
    // Tu peux ajouter d'autres posts ici...
  ];

  // Liste qui garde l'état (affiché ou non) des commentaires pour chaque post
  List<bool> showComments = [];

  @override
  void initState() {
    super.initState();
    // Initialisation : au début, aucun commentaire n'est affiché
    showComments = List.filled(postsItems.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postsItems.asMap().entries.map((entry) { 
        // asMap().entries permet de récupérer à la fois l'index et la valeur du post
        int index = entry.key;
        var post = entry.value;

        // Convertir la liste de Map des commentaires en liste d'objets Comment
        List<Comment> commentsList = (post['comments'] as List).map((c) {
          return Comment(
            username: c['username'],
            text: c['text'],
            userImage: c['userImage'],
            date: DateTime.now(), // On met la date actuelle pour l'exemple
          );
        }).toList();

        return Column(
          children: [
            // ------------------- HEADER -------------------
            Container(
              // color: Colors.yellow,
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // Avatar avec cadre de story
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/profile/Story.png", height: 50), // cadre
                      CircleAvatar(
                        backgroundImage: AssetImage(post['profile']), // avatar de l'utilisateur
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Text(post['pseudo']), // pseudo dynamique
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.more_vert), // icône menu
                    ),
                  ),
                ],
              ),
            ),

            // ------------------- IMAGE DU POST -------------------
            Container(
              height: 300,
              width: double.infinity,
              color: post['color'], // couleur de fond pour tester
              child: Image.asset(post['image'], fit: BoxFit.cover), // image du post
            ),

            // ------------------- FOOTER ICONES -------------------
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 20)), // like
                  
                  // Commentaire : au clic, on affiche/cacher la section commentaires
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showComments[index] = !showComments[index]; 
                        // inverse l'état : si false -> true, true -> false
                      });
                    }, 
                    icon: Icon(Icons.comment_outlined, size: 20),
                  ),
                  
                  IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined, size: 20)), // partage
                  Expanded(child: Container()), // espace flexible
                  IconButton(onPressed: (){}, icon: Icon(Icons.bookmark, size: 20)), // sauvegarde
                ],
              ),
            ),

            // ------------------- SECTION COMMENTAIRES -------------------
            // Affiché uniquement si showComments[index] == true
            if (showComments[index])
              CommentSection(comments: commentsList),

            // ------------------- ZONE AJOUT COMMENTAIRE -------------------
            if (showComments[index])
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Ajouter un commentaire...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {}, // ici tu peux ajouter la logique pour envoyer le commentaire
                    ),
                  ],
                ),
              ),

            Divider(), // Séparateur entre les posts
          ],
        );
      }).toList(),
    );
  }
}
