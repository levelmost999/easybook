import 'dart:ui';

import 'package:flutter/material.dart';

class Protocol extends StatelessWidget {
  const Protocol({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 56),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double.infinity,
            ),
            child: const Text(
              '用户协议',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                  '我们深知用户信息对您的重要性，并会尽全力保护您的用户信息安全可靠。我们致力于维持您对我们的信任，恪守以下原则，保护您的用户信息：权责一致原则、目的明确原则、选择同意原则、最少够用原则、确保安全原则、主体参与原则、公开透明原则等。同时，我们承诺，我们将按业界成熟的安全标准，采取相应的安全保护措施来保护您的用户信息'),
              Text('请在使用我们的产品（或服务）前，仔细阅读并了解本隐私政策'),
              Text('一、我们如何收集和使用您的用户信息'),
              Text('（一）您使用我司产品或服务过程中我们收集和使用的信息'),
              Text(
                  '我们仅会出于本政策所述的业务功能，收集和使用您的用户信息，收集用户信息的目的在于向您提供产品或服务，您有权自行选择是否提供该信息，但多数情况下，如果您不提供，我们可能无法向您提供相应的服务，也无法回应您遇到的问题：'),
              Text(
                  '在您使用我们的服务时，允许我们收集您自行向我们提供的或为向您提供服务所必要的信息包括：网络日志、设备信息、位置信息和其它相关信息等。'),
              Text(
                  '对于我们收集的用户信息，我们将用于为您提供身份验证、安全防范、反诈骗监测、存档备份、客户的安全服务等用途。[（重要）为保证隐私政策的规范性，建议逐项描述应用所收集和使用的用户信息，逐项说明收集该信息具体的使用目的和使用方式。]'),
              Text('您提供的上述信息，将在您使用本服务期间持续授权我们使用。在您停止使用推送服务时，我们将停止使用并删除上述信息'),
              Text(
                  '我们保证会依法对收集后的用户信息进行去标识化或匿名化处理，对于无法单独或者与其他信息结合识别自然人个人身份的信息，不属于法律意义上的个人信息。如果我们将非个人信息与其他信息结合识别到您的个人身'),
            ],
          ),
        )),
      ),
    );
  }
}

class Privacy extends StatelessWidget {
  const Privacy({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 56),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double.infinity,
            ),
            child: const Text(
              '隐私政策',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                  '我们深知用户信息对您的重要性，并会尽全力保护您的用户信息安全可靠。我们致力于维持您对我们的信任，恪守以下原则，保护您的用户信息：权责一致原则、目的明确原则、选择同意原则、最少够用原则、确保安全原则、主体参与原则、公开透明原则等。同时，我们承诺，我们将按业界成熟的安全标准，采取相应的安全保护措施来保护您的用户信息'),
              Text('请在使用我们的产品（或服务）前，仔细阅读并了解本隐私政策'),
              Text('一、我们如何收集和使用您的用户信息'),
              Text('（一）您使用我司产品或服务过程中我们收集和使用的信息'),
              Text(
                  '我们仅会出于本政策所述的业务功能，收集和使用您的用户信息，收集用户信息的目的在于向您提供产品或服务，您有权自行选择是否提供该信息，但多数情况下，如果您不提供，我们可能无法向您提供相应的服务，也无法回应您遇到的问题：'),
              Text(
                  '在您使用我们的服务时，允许我们收集您自行向我们提供的或为向您提供服务所必要的信息包括：网络日志、设备信息、位置信息和其它相关信息等。'),
              Text(
                  '对于我们收集的用户信息，我们将用于为您提供身份验证、安全防范、反诈骗监测、存档备份、客户的安全服务等用途。[（重要）为保证隐私政策的规范性，建议逐项描述应用所收集和使用的用户信息，逐项说明收集该信息具体的使用目的和使用方式。]'),
              Text('您提供的上述信息，将在您使用本服务期间持续授权我们使用。在您停止使用推送服务时，我们将停止使用并删除上述信息'),
              Text(
                  '我们保证会依法对收集后的用户信息进行去标识化或匿名化处理，对于无法单独或者与其他信息结合识别自然人个人身份的信息，不属于法律意义上的个人信息。如果我们将非个人信息与其他信息结合识别到您的个人身'),
            ],
          ),
        )),
      ),
    );
  }
}

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: PageView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image(
                    image: AssetImage('assets/images/guide1.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    '标题文字1',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  '这是一段描述这是一段描述',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                  child: Image(
                    image: AssetImage('assets/images/guide2.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Text(
                    '标题文字1',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  '这是一段描述这是一段描述',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 30),
                  child: Image(
                    image: AssetImage('assets/images/guide3.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text(
                    '标题文字1',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  '这是一段描述这是一段描述',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
