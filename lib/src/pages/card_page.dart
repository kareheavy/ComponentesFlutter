import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
          _cardTipo3()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el tutilo de esta tarjeta'),
            subtitle: Text(
                'Aqui estamos en la descripcion de esta tarjeta de los que quiero mostrarle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://josesolsonabarrielhome.files.wordpress.com/2019/02/vegetacion-italia-montes-pragser-wildsee-jose-solsona-barriel.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://josesolsonabarrielhome.files.wordpress.com/2019/02/vegetacion-italia-montes-pragser-wildsee-jose-solsona-barriel.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner'),
          )
        ],
      ),
    );
  }

  _cardTipo3() {
    final card = Container(
      // clipBehavior: Clip.antiAlias, //Sin esto toca hacer toda esta carpinteria
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://josesolsonabarrielhome.files.wordpress.com/2019/02/vegetacion-italia-montes-pragser-wildsee-jose-solsona-barriel.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://josesolsonabarrielhome.files.wordpress.com/2019/02/vegetacion-italia-montes-pragser-wildsee-jose-solsona-barriel.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2, 10)
            )
          ]),
      child: ClipRRect(
        //Recorta todo lo que se pase de su contenedor
        child: card,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
