import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/auth/auth.dart';
import 'package:foodsberrymobile/store/global/cart/mockCart.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:foodsberrymobile/transport/api/auth.dart';
import 'package:foodsberrymobile/transport/api/user.dart';
import 'package:foodsberrymobile/utils/chek_login.dart';
import 'package:foodsberrymobile/views/pages/profile/widgets/listcart.dart';
import 'package:foodsberrymobile/views/pages/profile/widgets/profile-card.dart';
import 'package:foodsberrymobile/views/widgets/popups.dart';

class ProfilePage extends ConsumerWidget {
  ProfilePage({Key? key}) : super(key: key);
  final _fieldTextPhone = TextEditingController();
  final _fieldTextReciveCode = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
/*             leading: IconButton(
              icon: const Icon(Icons.chevron_left, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ), */
            foregroundColor: Colors.black54,
            actions: [
              IconButton(
                color: Colors.black54,
                icon: const Icon(Icons.search),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
            elevation: 4,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text('ПРОФИЛЬ')),
        body: SafeArea(
          child: Center(
            child: Consumer(builder: (context, ref, _) {
              final userData = ref.watch(userState.state).state;
              final isL = ref.watch(authState.state).state;
              final _stepsAuth = ref.watch(authSteps.state).state;
              String _phoneField = '';
              String _smsField = '';
              print('userData = >>> $userData');
              print('isL ======= > $isL');
              print('_stepsAuth ======= > $_stepsAuth');
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isLogin()
                      ? Expanded(
                          child: ListView(
                            children: [
                              const Padding(padding: EdgeInsets.only(top: 24)),
                              Column(
                                children: [
                                  const ProfileCard(),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 24)),
                                  Text('Ваш список заказов : ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                  SingleChildScrollView(
                                    physics: const ScrollPhysics(),
                                    child: Column(
                                      children: <Widget>[
                                        ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: mockCart!.length,
                                          itemBuilder: (context, index) {
                                            return MockCartWidget(
                                                itemCart: mockCart![index]);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 24)),
                                  ElevatedButton(
                                      onPressed: () async {
                                        logoutFS();
                                        ref.read(userState.state).state =
                                            const User();
                                        ref.read(authState.state).state = false;
                                      },
                                      child: const Text('Выход')),
                                ],
                              )
                            ],
                          ),
                        )
                      : Expanded(
                          child: Stepper(
                              controlsBuilder: (context, _) {
                                return Row(
                                  children: <Widget>[
                                    TextButton(
                                      onPressed: () async {
                                        switch (_stepsAuth) {
                                          case 0:
                                            if (_fieldTextPhone.text == '') {
                                              showBasicsFlash(
                                                  context: context,
                                                  isError: true,
                                                  message: 'Поле пустое',
                                                  duration: const Duration(
                                                      seconds: 2));
                                            } else {
                                              ref
                                                  .read(authSteps.state)
                                                  .state = _stepsAuth! <
                                                      1
                                                  ? ref
                                                      .read(authSteps.state)
                                                      .state = _stepsAuth + 1
                                                  : 1;
                                              _phoneField =
                                                  _fieldTextPhone.text;
                                              _phoneField = '+79031607105';
                                              print(
                                                  '_fieldTextPhone = ${_fieldTextPhone.text}');
                                            }
                                            await loginFS(
                                                'cossack_box@mail.ru',
                                                'Qwerty12345',
                                                _phoneField,
                                                '8412');
                                            break;

                                          case 1:
                                            _phoneField = '+79031607105';
                                            //_smsField = '3777';
                                            if (_fieldTextReciveCode.text ==
                                                '') {
                                              showBasicsFlash(
                                                  context: context,
                                                  isError: true,
                                                  message: 'Поле пустое',
                                                  duration: const Duration(
                                                      seconds: 2));
                                            } else {
                                              _smsField =
                                                  _fieldTextReciveCode.text;

                                              print(
                                                  '_fieldTextReciveCode = ${_fieldTextReciveCode.text}');
                                              AuthHive reciveAuth =
                                                  await loginFS(
                                                      'cossack_box@mail.ru',
                                                      'Qwerty12345',
                                                      _phoneField,
                                                      _smsField);

                                              if (reciveAuth.error == '') {
                                                User? readUserData =
                                                    (await getUser());

                                                ref
                                                    .read(userState.state)
                                                    .state = readUserData;
                                                ref
                                                    .read(authState.state)
                                                    .state = true;
                                                ref
                                                    .read(authSteps.state)
                                                    .state = 0;
                                                if (Platform.isAndroid) {
                                                  AppMetrica.reportEvent(
                                                      'Авторизация пользователя на Андроид'); // Android-specific code
                                                } else if (Platform.isIOS) {
                                                  AppMetrica.reportEvent(
                                                      'Авторизация пользователя на iOS'); // iOS-specific code
                                                }

                                                StepState.disabled;
                                              } else {
                                                print('EROR SIGNING');
                                                showBasicsFlash(
                                                    context: context,
                                                    isError: true,
                                                    message: reciveAuth.error,
                                                    duration: const Duration(
                                                        seconds: 3));
                                              }
                                            }
                                            break;
                                        }
                                      },
                                      child: const Text('ДАЛЕЕ'),
                                    ),
                                    _stepsAuth! > 0
                                        ? TextButton(
                                            onPressed: () {
                                              ref
                                                  .read(authSteps.state)
                                                  .state = _stepsAuth! >
                                                      0
                                                  ? ref
                                                      .read(authSteps.state)
                                                      .state = _stepsAuth - 1
                                                  : 0;
                                            },
                                            child: const Text('НАЗАД'),
                                          )
                                        : Container(),
                                  ],
                                );
                              },
                              type: StepperType.vertical,
                              physics: const ScrollPhysics(),
                              currentStep: _stepsAuth!,
                              onStepTapped: (step) =>
                                  ref.read(authSteps.state).state = step,
                              steps: <Step>[
                              Step(
                                title: const Text('Авторизация'),
                                content: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      controller: _fieldTextPhone,
                                      //keyboardType: TextInputType.number,
                                      onFieldSubmitted: (inputText) {
                                        if (kDebugMode) {
                                          print("onSubmitted");
                                          print("Введенный текст: $inputText");
                                        }
                                      },
                                      onChanged: (inputText) {
                                        if (kDebugMode) {
                                          print('Телефон :> $inputText');
                                        }
                                      },
                                      decoration: const InputDecoration(
                                          labelText: 'Ваш номер телефона'),
                                    ),
                                  ],
                                ),
                                isActive: _stepsAuth >= 0,
                                state: _stepsAuth >= 0
                                    ? StepState.complete
                                    : StepState.disabled,
                              ),
                              Step(
                                title: const Text('Подтвердите авторизацию'),
                                content: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      controller: _fieldTextReciveCode,
                                      keyboardType: TextInputType.number,
                                      onFieldSubmitted: (inputText) {
                                        if (kDebugMode) {
                                          print("onSubmitted");
                                          print(
                                              "Введенный текст СМС: $inputText");
                                        }
                                      },
                                      onChanged: (inputText) {
                                        if (kDebugMode) {
                                          print('СМС :> $inputText');
                                        }
                                      },
                                      decoration: const InputDecoration(
                                          labelText: 'Код СМС'),
                                    ),
                                  ],
                                ),
                                isActive: _stepsAuth >= 0,
                                state: _stepsAuth >= 1
                                    ? StepState.complete
                                    : StepState.disabled,
                              ),
                            ]))
                ],
              );
            }),
          ),
        ));
  }
}
