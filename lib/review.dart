import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  //Variables
  String pathFoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int catindadEstrellas;
  String textoComentario;

  //metodo constructor
  Review(this.pathFoto,this.textoNombreUsuario,this.textoResumenUsuario,this.catindadEstrellas,this.textoComentario);

  @override
  Widget build(BuildContext context) {
    //review
    final foto = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(
              pathFoto
            ),
                fit: BoxFit.cover
        )
      ),
    );

    //nombre del usuario
    final nombreUsuario = Container(
      child: Text(
          textoNombreUsuario,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 22
        ),
      ),
    );

    //estrellas
    final estrella = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 18,
      ),
    );
    final estrellaBorde = Container(
      margin: EdgeInsets.only(
        top: 10,
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
        size: 18,
      ),
    );
    List<Container> estrellas = [];
    for(int i = 0 ; 1 < 5 ; i++) {
      if(i < catindadEstrellas) {
        estrellas.add(estrella);
      }else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaEstrellas = Row(
      children: estrellas,
    );

    //resumen usuario
    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text(
        textoResumenUsuario,
        style: TextStyle(
          fontFamily: "Lato",
          color: Colors.black54
        ),
      ),
    );

    //fila resumen
    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filaEstrellas
      ],
    );

    //comentario
    final comentario = Container(
      child: Text(
          textoComentario,
        style: TextStyle(
          fontFamily: "Lato"
        ),
      ),
    );

    //columna
    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        filaResumen,
        comentario
      ],
    );

    final review = Row(
      children: <Widget>[
        foto,
        columnaReview
      ],
    );

    return review;
  }
}