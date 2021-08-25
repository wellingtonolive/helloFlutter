import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/page_bodyBiografia.dart';
import 'package:helloflutter/page_bodyimg.dart';
import './page_indicator.dart';
import './page_body.dart';

class StepForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepFormState();
  }
}

class _StepFormState extends State<StepForm> {
  final _stepFormController = PageController();
  int _page = 0;
  List _pagesList = [
    pageBody(
        'https://miro.medium.com/max/1400/1*TFZQzyVAHLVXI_wNreokGA.png',
        'Flutter',
        'Wellington de Oliveira Carvalho RA 18100721'),
    pageBody(
        'https://dkrn4sk0rn31v.cloudfront.net/2020/05/15090303/lego-interfaces-flutter.png',
        'Conceito',
        'O Flutter é um framework desenvolvido pela Google para criação de aplicações móveis multiplataforma (Android e iOS) utilizando uma única base de código e muito clamado por sua facilidade em desenvolver aplicações com uma interface intuitiva e agradável. Para a criação destas interfaces, o Flutter utiliza um conceito de Widgets'
    ),
    pageBody(
        'https://miro.medium.com/max/770/1*j49HIY0az28VWMDrmUu9eg.png',
        'Árvore',
        'Se você está habituado com o termo “componente” vai se identificar rápido. O Flutter possui os “widgets” que seria a mesma coisa de um componente. Um widget é uma árvore que pode conter um ou mais filhos(widgets), e esses filhos são renderizados conforme a construção desta árvore. Muito parecido com o DOM do html'
    ),
    pageBody(
        'https://www.infnet.edu.br/esti/wp-content/uploads/sites/5/2020/10/0_h5XCA2xXFVj60dE5.jpeg',
        'Histórico',
        '2014 – Inicio codinome “SKY || 2015 – Dart Develpoment – Flutter || 2016 – Uma melhor maneira de desenvolvimento mobile  || 2017 – Google IO  || 12/2018 – Lançada Versão 1.0 – Hummingbird - Web'
    ),
    pageBody(
        'https://i1.wp.com/jornal.usp.br/wp-content/uploads/2020/07/20200713_00_feira_recrutamento_fea.jpg?fit=768%2C403&ssl=1',
        'Mercado de Trabalho',
        'Nubank || Beetech || Banco BS2 || Globo || Netflix'
    ),
    pageBodyImg(
        'img/salarial.jpg',
        'Faixa Salarial',
        'Média do Salário no Brasil: Junior R\$000,00 || Pleno R\$7000,00 || Sênior R\$10000,00 até R\$12000,00 ||| Média do Salário nos Estados Unidos  U\$ 5.642 - U\$ 20.792 por mês'
    ),
    pageBodyImg(
        'img/bb.jpg',
        'Perspectiva Futura',
        'Mesmo sendo uma tecnologia recente e sem mercado, aprender Flutter é uma aposta que pode dar muito certo. Algumas grandes empresas (Alibaba, Groupon, Google, etc.) notaram isso e estão migrando para Flutter'

    ),
    pageBody(
        'https://youcourse.com.br//Content/img/subsubcategoria/flutter.jpg',
        'Setup Inicial',
        'https://flutter.dev/'
    ),
    pageBodyBiografia(
        'https://www.luis.blog.br/userfiles/image/biografia.jpg',
        'Bibliografia',
        'https://www.treinaweb.com.br/blog/flutter-o-que-sao-widgets-e-qual-sua-importancia#:~:text=O%20Flutter%20%C3%A9%20um%20framework,uma%20interface%20intuitiva%20e%20agrad%C3%A1vel ||| https://medium.com/android-dev-moz/flutter-conhecendo-o-flutter-70d31772afa5 ||| https://www.tecmundo.com.br/software/155010-parceria-entre-google-canonical-leva-flutter-linux.htm'
    ),
    pageBody(
        'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2017/09/dc3bavida-zapolzun.jpg?quality=100&strip=info&crop=0px%2C117px%2C1732px%2C1179px&resize=680%2C453',
        'Perguntas?',
        'Dúvidas ? Sugestões ? Reclamações ? Declarações ??'
    ),
    pageBody(
        'https://memegenerator.net/img/instances/68135361/muito-obrigado-boa-noite.jpg',
        'Obrigado',
        'Agradeço atenção de todos. Boa noite !!!!'
    ),

  ];

  void _changeStep(bool nextPage) {
    if (_page < 11 && nextPage) {
      setState(() {
        _page++;
      });

      _stepFormController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else if (_page > 0 && !nextPage) {
      setState(() {
        _page--;
      });
      _stepFormController.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: PageView.builder(
          controller: _stepFormController,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return _pagesList[index];
          }),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
              onPressed: () => _changeStep(false), child: Text('Anterior')),
          pageIndicator(_page == 0),
          pageIndicator(_page == 1),
          pageIndicator(_page == 2),
          pageIndicator(_page == 3),
          pageIndicator(_page == 4),
          pageIndicator(_page == 5),
          pageIndicator(_page == 6),
          pageIndicator(_page == 7),
          pageIndicator(_page == 8),
          pageIndicator(_page == 9),
          pageIndicator(_page == 10),
          FlatButton(onPressed: () => _changeStep(true), child: Text('Proxime'))
        ],
      ),
    );
  }
}
