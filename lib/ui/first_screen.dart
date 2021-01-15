import 'package:anniversary_proto/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/onboard/$assetName', width: 350.0,),
      // child: Image.asset('assets/onboard/$assetName.svg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome!',
          body: '기념일 스케줄러를 설치해 주셔서 감사합니다.',
          image: _buildImage('undraw_happy_birthday_s72n.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: '기념일 스케줄러',
          body: '지인들의 정보를 알려주시면, 특별한 기념일을 미리 챙겨드립니다.',
          image: _buildImage('undraw_team_ih79.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: '잊지 마세요!',
          body: '기념일을 미리 알림받고, 한달 전에 장소를 예약하고 일주일 전에 선물을 주문하세요!',
          image: _buildImage('undraw_special_event_4aj8.png'),
          decoration: pageDecoration,
        ),PageViewModel(
          title: '모든 날들을 특별하게',
          body: '다른 사람들은 어떤 날을 보내고 있는지 확인하세요!',
          image: _buildImage('undraw_online_dating_yruf.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => Navigator.pushNamed(context, '/main_screen'),
      done: Text(
        '시작하기',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        // color: CustomColors.orange,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        activeColor: CustomColors.orange,
      ),
    );
  }
}
