import 'dart:math';


import 'package:flutter/material.dart';

void main() {
  runApp(FalBasla());
}


class FalBasla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text(
            "GÜNÜN FALI",
            style: TextStyle(color: Colors.white,
            ),),
        ),
        body: Falstatlesful(),
      ),
      
     
    );
  }
}

class Falstatlesful extends StatefulWidget {
  @override
  _FalstatlesfulState createState() => _FalstatlesfulState();
}

class _FalstatlesfulState extends State<Falstatlesful> {
  
int yanitRakam =0;
random(min, max){
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  void askDurumu(){
     yanitRakam = random(1, 6);
      print(yanitRakam);
      setState(() {});

  }
  void paraDurumu(){
     yanitRakam = random(6, 11);
      print(yanitRakam);
      setState(() {});
  }
  void gunluktavsiyedurumu(){
     yanitRakam = random(11, 16);
      print(yanitRakam);
      setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
                width: 200,
                child: Divider(
                  height: 30,
                  color: Colors.white,  
                ),
              ),
          CircleAvatar(
                radius: 110,
                backgroundColor: Colors.pink,
                backgroundImage: AssetImage("assets/falcipng.png"),
              ),
          
  
               Container(
                width: 200,
                child: Divider(
                  height: 30,
                  color: Colors.white,  
                ),
              ),
               GestureDetector(
                 onTap: (){
                   print("aşk durumu tıklandı");
                   askDurumu();
                 },
                 child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.white,
                  child: 
                  ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),title: Text(
                      "AŞK DURUMU",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                             ),
               ),
                  Container(
                width: 200,
                child: Divider(
                  height: 30,
                  color: Colors.white,  
                ),
              ),
               GestureDetector(
                 onTap: (){
                   print("para durumu tıklandı");
                   paraDurumu();
                 },
                 child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.white,
                  child: 
                  ListTile(
                    leading: Icon(
                      Icons.attach_money_sharp,
                      color: Colors.green,
                    ),title: Text(
                      "PARA DURUMU",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                             ),
               ),
                  Container(
                width: 200,
                child: Divider(
                  height: 30,
                  color: Colors.white,  
                ),
              ),
               GestureDetector(
                 onTap: (){
                   print("günlük tavsiye tıklandı");
                   gunluktavsiyedurumu();
                 },
                 child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.white,
                  child: 
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),title: Text(
                      "GÜNLÜK TAVSİYE",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                             ),
               ),
                   SizedBox(
                height: 10,
              ),
                
              
               Container(
                
                child: 
                 Text(yanitlar[yanitRakam]  ,
               style: TextStyle(color: Colors.white,),),
              ),
        ],
      ),     
    );
  }
}







