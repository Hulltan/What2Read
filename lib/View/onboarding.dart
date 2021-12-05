import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<OnboardingPage>{
  final introKey = GlobalKey<IntroductionScreenState>();

  get title => null;

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => OnboardingPage(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "Descreva as características do livro",
          body:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Container(
            child: SvgPicture.asset('assets/undraw_text_field_htlv.svg', height: 160, width: 160,),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Analise os livros sugeridos",
          body:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Container(
            child: SvgPicture.asset('assets/undraw_browsing_online_re_umsa.svg', height: 160, width: 160,),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Salve as opções favoritas",
          body:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Container(
            child: SvgPicture.asset('assets/undraw_loving_it_re_jfh4.svg', height: 160, width: 160,),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Pular'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Fim', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: Colors.deepPurple,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
