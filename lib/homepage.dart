import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_ear_and_eyes/choosing.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue)
        ),
        width: 780.0,
        height: 780.0,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 0.0, 780.2, 780.2),
              size: Size(780.2, 780.2),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 780.2, 780.2),
                    size: Size(780.2, 780.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      '<svg viewBox="0.0 0.0 780.2 780.2" ><defs><linearGradient id="gradient" x1="-0.073874" y1="-0.06087" x2="1.102086" y2="1.088498"><stop offset="0.0" stop-color="#ff2d388a"  /><stop offset="0.99946" stop-color="#ff00aeef"  /></linearGradient></defs><path transform="translate(-142.52, -153.64)" d="M 922.6771240234375 210.1011810302734 L 922.6771240234375 877.341552734375 C 922.6771240234375 908.551025390625 897.3194580078125 933.8026733398438 866.2159423828125 933.8026733398438 L 198.9757232666016 933.8026733398438 C 167.7663116455078 933.8026733398438 142.5249633789063 908.551025390625 142.5249633789063 877.341552734375 L 142.5249633789063 210.1011810302734 C 142.5249633789063 178.8917846679688 167.7663116455078 153.6400756835938 198.9757232666016 153.6400756835938 L 866.2159423828125 153.6400756835938 C 897.3194580078125 153.6400756835938 922.6771240234375 178.8917846679688 922.6771240234375 210.1011810302734 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(345.5, 0.0, 434.7, 396.5),
                    size: Size(780.2, 780.2),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      '<svg viewBox="345.5 0.0 434.7 396.5" ><path transform="translate(170.36, -153.64)" d="M 609.7930908203125 210.1011810302734 L 609.7930908203125 550.15087890625 C 536.2642822265625 470.8974304199219 413.7585144042969 462.7135009765625 319.3138122558594 409.0615539550781 C 240.5269012451172 364.1661682128906 160.0967712402344 247.8620452880859 177.51416015625 153.6400756835938 L 553.331787109375 153.6400756835938 C 584.4354248046875 153.6400756835938 609.7930908203125 178.8917846679688 609.7930908203125 210.1011810302734 Z" fill="#ffffff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 408.3, 780.2),
                    size: Size(780.2, 780.2),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      '<svg viewBox="0.0 0.0 408.3 780.2" ><path transform="translate(-142.52, -153.64)" d="M 550.8348999023438 933.8026733398438 L 198.9757232666016 933.8026733398438 C 167.7663116455078 933.8026733398438 142.5249633789063 908.551025390625 142.5249633789063 877.341552734375 L 142.5249633789063 210.1011810302734 C 142.5249633789063 178.8917846679688 167.7663116455078 153.6400756835938 198.9757232666016 153.6400756835938 L 305.4736938476563 153.6400756835938 C 335.05078125 170.8243560791016 360.1752319335938 194.5494079589844 377.009521484375 224.4762725830078 C 422.13818359375 305.1394958496094 398.1693420410156 405.0862121582031 374.2110290527344 494.2728271484375 C 350.2420349121094 583.4700317382813 329.0823669433594 684.8159790039063 378.1864013671875 763.0199584960938 C 421.4280090332031 831.8736572265625 510.0421142578125 865.4153442382813 550.8348999023438 933.8026733398438 Z" fill="#ffffff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 203.8, 780.2, 576.4),
                    size: Size(780.2, 780.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      '<svg viewBox="0.0 203.8 780.2 576.4" ><path transform="translate(-142.52, 30.89)" d="M 922.6771240234375 172.860107421875 L 922.6771240234375 692.8095703125 C 922.6771240234375 724.0189819335938 897.3194580078125 749.2706909179688 866.2159423828125 749.2706909179688 L 198.9757232666016 749.2706909179688 C 167.7663116455078 749.2706909179688 142.5249633789063 724.0189819335938 142.5249633789063 692.8095703125 L 142.5249633789063 584.2122802734375 C 157.2500457763672 578.8377685546875 172.4412841796875 574.5123901367188 187.2932891845703 570.6537475585938 C 262.1047973632813 551.2429809570313 338.7821655273438 538.9776611328125 415.8199768066406 534.1860961914063 C 461.53173828125 531.2601928710938 508.0491027832031 530.793701171875 552.0010375976563 518.0513305664063 C 611.6211547851563 500.6339111328125 663.9903564453125 459.9469604492188 695.6664428710938 406.6448669433594 C 725.9429321289063 355.8023376464844 737.9859008789063 294.3162841796875 776.9129028320313 249.7707061767578 C 813.6135864257813 207.8117523193359 868.4422607421875 187.8180999755859 922.6771240234375 172.860107421875 Z" fill="#ffffff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              child: SizedBox(
                                width: 104.0,
                                height: 139.0,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 104.4, 104.4),
                                      size: Size(104.4, 138.7),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                2.3, 46.1, 102.2, 58.3),
                                            size: Size(104.4, 104.4),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              '<svg viewBox="2.3 46.1 102.2 58.3" ><defs><linearGradient id="gradient" x1="1.086368" y1="0.5" x2="0.107671" y2="0.5"><stop offset="0.0" stop-color="#ffb6e9ff"  /><stop offset="1.0" stop-color="#ff2ec0ff"  /></linearGradient></defs><path transform="translate(-424.86, -449.44)" d="M 440.0182800292969 516.6387939453125 L 490.5865783691406 516.6387939453125 C 493.993896484375 516.6387939453125 496.7954711914063 519.4259033203125 496.8135375976563 522.8336181640625 L 496.8135375976563 522.8336181640625 C 496.8316040039063 526.240478515625 494.0591430664063 529.0274658203125 490.6517944335938 529.0274658203125 L 448.0060119628906 529.0274658203125 C 455.3496398925781 536.8189697265625 465.7584838867188 541.687744140625 477.280029296875 541.687744140625 C 499.3876647949219 541.687744140625 517.215087890625 523.7659912109375 517.0986938476563 501.6579284667969 C 517.087646484375 499.5722961425781 516.9175415039063 497.5232238769531 516.5987548828125 495.5239868164063 L 528.88916015625 495.5239868164063 C 529.1360473632813 497.5355834960938 529.2709350585938 499.5819702148438 529.281982421875 501.6579284667969 C 529.43408203125 530.4942016601563 506.1806640625 553.8709716796875 477.3439636230469 553.8709716796875 C 453.7149963378906 553.8709716796875 433.6731567382813 538.17333984375 427.1199951171875 516.6387939453125 L 439.7480773925781 516.6387939453125 L 440.0182800292969 516.6387939453125 L 440.0182800292969 516.6387939453125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 102.2, 58.5),
                                            size: Size(104.4, 104.4),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            fixedHeight: false,
                                            child: SvgPicture.string(
                                              '<svg viewBox="0.0 0.0 102.2 58.5" ><defs><linearGradient id="gradient" x1="-0.0683" y1="0.5" x2="1.000001" y2="0.5"><stop offset="0.0" stop-color="#ffafe1f6"  /><stop offset="1.0" stop-color="#ff2ec0ff"  /></linearGradient></defs><path transform="translate(-421.98, -391.0)" d="M 473.9210205078125 391 C 497.5500183105469 391 517.59228515625 406.6976928710938 524.14501953125 428.2317504882813 L 512.21923828125 428.2317504882813 L 511.2471008300781 428.2317504882813 L 459.9056396484375 428.2317504882813 C 456.4983215332031 428.2317504882813 453.6962890625 425.4451904296875 453.6786804199219 422.0373840332031 L 453.6786804199219 422.0373840332031 C 453.6605529785156 418.6305541992188 456.4335327148438 415.8435363769531 459.8403625488281 415.8435363769531 L 503.2594299316406 415.8435363769531 C 495.9153747558594 408.052001953125 485.5065307617188 403.1832275390625 473.9853820800781 403.1832275390625 C 451.8773498535156 403.1832275390625 434.0499267578125 421.1050109863281 434.1663208007813 443.2130737304688 C 434.1777648925781 445.3379821777344 434.3554382324219 447.4240417480469 434.6851806640625 449.4598693847656 L 422.3895263671875 449.4598693847656 C 422.1338195800781 447.4112548828125 421.9940795898438 445.327392578125 421.9830627441406 443.2130737304688 C 421.8313903808594 414.3768005371094 445.0847778320313 391 473.9210205078125 391 L 473.9210205078125 391 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                40.8, 40.6, 23.1, 23.1),
                                            size: Size(104.4, 104.4),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                color: const Color(0xd4ffffff),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          10.0, 110.7, 91.0, 28.0),
                                      size: Size(104.4, 138.7),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedHeight: true,
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'GillSansMT',
                                            fontSize: 20,
                                            color: const Color(0xffffffff),
                                            height: 2.0416666666666665,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'E CARE',
                                              style: TextStyle(
                                                fontFamily: 'Gill Sans MT',
                                                fontSize: 50,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(25.5, 124.2, 6.0, 1.0),
                                      size: Size(104.4, 138.7),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        '<svg viewBox="153.5 234.5 6.0 1.0" ><path transform="translate(153.5, 234.5)" d="M 0 0 L 6 0" fill="none" stroke="#e8edf1" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 329.0,
                              child: Text(
                                'E-CARE',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xf7e9f6fe),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 329.0,
                              child: Text(
                                'SEE and LISTEN the world better \nWITH E-CARE',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 22,
                                  color: const Color(0xf7e9f6fe),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'This is an eye and hearing test.\nThe purpose of this test is to help \nyou determine whether you could \nbenefit from a comprehensive \ntest and evaluation of your \nhearing and vision.',
                              style: TextStyle(
                                fontSize: 18,
                                color: const Color(0xf7dff2ff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => testchooser(),
                                ));
                              },
                              child: Text(
                                "Take a test",
                                style: TextStyle(fontSize: 20),
                              ),
                              minWidth: 100,
                              color: Colors.white,
                              elevation: 8,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
