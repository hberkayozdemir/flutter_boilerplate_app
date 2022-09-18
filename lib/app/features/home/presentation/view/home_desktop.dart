import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:hbosoftware/config/hbo_provider.dart';
import 'package:hbosoftware/core/ui/thypography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../../../core/responsive/responsive.dart';

class HomeDesktop extends HookWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final appProvider = Provider.of<HboProvider>(context);
    final projectsVisible = useState<bool>(false);
    final teamsAction = useState<bool>(false);
    final showCat = useState<bool>(false);

    return BodyWrapper(
      widgets: [
        Expanded(
          flex: 1,
          child: DecoratedBox(
            decoration: const BoxDecoration(),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 3),
              child: Row(
                children: [
                  Lottie.asset(
                    'assets/logo/logo.json',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                  AutoSizeText(
                    "HBO SOFTWARE",
                    style: HboText.h3?.copyWith(letterSpacing: 4),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 10,
            child: Container(
              color: Colors.black,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'hilmiberkayozdemir@hbosoftware ~ % :Welcome to best software company world wide.',
                            style: GoogleFonts.robotoMono(color: Colors.white),
                          ),
                          Text(
                            'hilmiberkayozdemir@hbosoftware ~ % :./hbosoftware',
                            style: GoogleFonts.robotoMono(color: Colors.white),
                          ),
                          AutoSizeText(
                            """                                                                                                                                                                                                                                                
888    888 888                .d8888b.            .d888 888                                            
888    888 888               d88P  Y88b          d88P"  888                                            
888    888 888               Y88b.               888    888                                            
8888888888 88888b.   .d88b.   "Y888b.    .d88b.  888888 888888 888  888  888  8888b.  888d888  .d88b.  
888    888 888 "88b d88""88b     "Y88b. d88""88b 888    888    888  888  888     "88b 888P"   d8P  Y8b 
888    888 888  888 888  888       "888 888  888 888    888    888  888  888 .d888888 888     88888888 
888    888 888 d88P Y88..88P Y88b  d88P Y88..88P 888    Y88b.  Y88b 888 d88P 888  888 888     Y8b.     
888    888 88888P"   "Y88P"   "Y8888P"   "Y88P"  888     "Y888  "Y8888888P"  "Y888888 888      "Y8888                                                 
                                                                                                         """,
                            style: GoogleFonts.robotoMono(
                                color: Colors.white,
                                fontSize: HboResp.isDesktop(context) ? 12 : 2),
                          ),
                          Row(
                            children: [
                              Text(
                                'hilmiberkayozdemir@hbosoftware ~ % :',
                                style:
                                    GoogleFonts.robotoMono(color: Colors.white),
                              ),
                              AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      'ls',
                                      speed: const Duration(milliseconds: 200),
                                      textStyle: GoogleFonts.robotoMono(
                                          color: Colors.white),
                                    ),
                                  ]),
                            ],
                          ),
                          Text(
                            """projects/       team/        customers/      """,
                            style: GoogleFonts.robotoMono(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                'hilmiberkayozdemir@hbosoftware ~ % :',
                                style:
                                    GoogleFonts.robotoMono(color: Colors.white),
                              ),
                              AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  onFinished: (() =>
                                      projectsVisible.value = true),
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      'cd projects/',
                                      speed: const Duration(milliseconds: 200),
                                      textStyle: GoogleFonts.robotoMono(
                                          color: Colors.white),
                                    ),
                                  ]),
                            ],
                          ),
                          Visibility(
                            visible: projectsVisible.value,
                            child: Text(
                              'metamatch/   hibemi/   pandelearn/',
                              style:
                                  GoogleFonts.robotoMono(color: Colors.white),
                            ),
                          ),
                          if (projectsVisible.value) ...[
                            Row(
                              children: [
                                Text(
                                  'hilmiberkayozdemir@hbosoftware ~ % :',
                                  style: GoogleFonts.robotoMono(
                                      color: Colors.white),
                                ),
                                AnimatedTextKit(
                                    totalRepeatCount: 1,
                                    onFinished: (() =>
                                        teamsAction.value = true),
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        'cd teams/',
                                        speed:
                                            const Duration(milliseconds: 200),
                                        textStyle: GoogleFonts.robotoMono(
                                            color: Colors.white),
                                      ),
                                    ]),
                              ],
                            ),
                          ],
                          Visibility(
                            visible: teamsAction.value,
                            child: Text(
                              'hilmiberkayozdemir/',
                              style:
                                  GoogleFonts.robotoMono(color: Colors.white),
                            ),
                          ),
                          Visibility(
                            visible: teamsAction.value,
                            child: AnimatedTextKit(
                                totalRepeatCount: 1,
                                onFinished: (() => showCat.value = true),
                                animatedTexts: [
                                  TyperAnimatedText(
                                    'Comming Soon...',
                                    speed: const Duration(milliseconds: 200),
                                    textStyle: GoogleFonts.robotoMono(
                                        color: Colors.white),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )),
      ],
    );
  }
}

class BodyWrapper extends StatelessWidget {
  BodyWrapper({Key? key, required this.widgets}) : super(key: key);
  List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                flex: 3,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.blueAccent,
                        Colors.blue,
                        Colors.blueAccent,
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  height: size.height - 80,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widgets,
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }

  LinearGradient screenLinearGradient = LinearGradient(
      end: Alignment.topCenter,
      begin: Alignment.bottomCenter,
      colors: [
        Colors.orange.shade200,
        Colors.orange.shade300,
        Colors.orange.shade400,
        Colors.orange.shade600,
      ]);
}
