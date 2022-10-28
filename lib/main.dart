import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'util/util.dart';
import './routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: onGenerateRoute as Route<dynamic>? Function(RouteSettings)?,
      home: const Logo(),
      // home: const Protocol(),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    _getCounter(context);
    // _deletCount();
    return Scaffold(
      body: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 50,
                      height: 50,
                    )),
                Text(
                  '易阅读',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('在线阅读神器',
                    style: TextStyle(
                      fontSize: 12,
                      // color: Colors.grey,
                      color: Color.fromRGBO(204, 204, 204, 1),
                    )),
              ],
            ),
          )),
    );
  }
}

Future<File> _getLocalFile() async {
  String dir = (await getApplicationDocumentsDirectory()).path;
  return File('$dir/conuter.txt');
}

void _getCounter(context) async {
  File file = await _getLocalFile();
  try {
    String conunt = await file.readAsString();
    bool confirm = false;
    if(conunt=='true'){
      confirm = true;
    }else{
      confirm = await showpro(context);
    }
    
    if(confirm){
      file.writeAsString('true');
      Navigator.of(context).pushNamed('/slideshow');
    }else{
      file.writeAsString('false');
    }
  } on FileSystemException {
    file.writeAsString('false');
    bool confirm = await showpro(context);
    if(confirm){
      file.writeAsString('true');
      Navigator.of(context).pushNamed('/slideshow');
    }else{
      file.writeAsString('false');
    }
  }
}

void _deletCount() async {
  File file = await _getLocalFile();
  if (await file.exists()) {
    file.delete();
  }
}

Future<bool> showpro(context) async{
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        TapGestureRecognizer _tapGestureRecognizer1 = TapGestureRecognizer();
        TapGestureRecognizer _tapGestureRecognizer2 = TapGestureRecognizer();
        void dispose(){
          _tapGestureRecognizer1.dispose();
          _tapGestureRecognizer2.dispose();
        }
        return Dialog(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: double.infinity,
                    ),
                    child: const Text(
                      '温馨提示',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 14, right: 10),
                child: Text(
                  '欢迎来到易阅读',
                  style: TextStyle(
                    fontSize:14,
                  ),
                ),
              ),
              const Padding(
                // padding: EdgeInsets.only(left: 20),
                padding: EdgeInsets.fromLTRB(14, 0, 10, 0),
                child: Text(
                  '这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文案这是一段授权文',
                  style: TextStyle(
                    fontSize:14,
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 10, 0),
                child: Text.rich(TextSpan(
                  style: const TextStyle(
                    fontSize:14,
                  ),
                  children: [
                    const TextSpan(
                      text: '您可以阅读'
                    ),
                    TextSpan(
                      text: '《用户协议》',
                      style: const TextStyle(
                        color: Color.fromRGBO(204, 204, 204, 1),
                      ),
                      recognizer: _tapGestureRecognizer1
                      ..onTap = () => {
                        Navigator.of(context).pushNamed('/prorocol')
                      }),
                      const TextSpan(
                      text: '和'
                    ),
                    TextSpan(
                      text: '《隐私政策》',
                      style: const TextStyle(
                        color: Color.fromRGBO(204, 204, 204, 1),
                      ),
                      recognizer: _tapGestureRecognizer2
                      ..onTap = () => {
                        Navigator.of(context).pushNamed('/privacy')
                      }),
                  ]
                )),
              ),
               ConstrainedBox(
                 constraints: const BoxConstraints(
                   minWidth: double.infinity
                 ),
               child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ElevatedButton(
                  style:  ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: MaterialStateProperty.resolveWith((states) => const Color.fromRGBO(0,180,120,1)),
                    shape: MaterialStateProperty.resolveWith((states){
                      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(90));
                    })
                  ),
                  onPressed: (){
                  dispose();
                  Navigator.of(context).pop(true);
                  }, 
                  child: const Text('同意')),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  minimumSize:MaterialStateProperty.all(Size(1,1)),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                onPressed: (){
                  dispose();
                  Navigator.of(context).pop(false);
                }, 
                child: const Text(
                  '不同意',
                  style: TextStyle(color: Colors.black45),
                )),
                  )
                ],
              )
            ],
          ),
        );
      },
      barrierDismissible: false,
    );
}
