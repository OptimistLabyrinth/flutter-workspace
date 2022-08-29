import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key? key, required this.title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  final _loginIdController = TextEditingController();
  var _loginIdValue = '';
  final _passwordController = TextEditingController();
  var _passwordValue = '';
  late final AnimationController _progressbarController;

  @override
  void initState() {
    super.initState();
    _progressbarController = AnimationController(vsync: this);
  }

  void setLoading(bool loading) {
    setState(() {
      _loading = loading;
    });
  }

  void onChangedLoginId(String value) {
    var trimmedValue = value.trim();
    setState(() {
      _loginIdValue = trimmedValue;
    });
  }

  String? validateLoginId(String? value) {
    if (value == null || value.isEmpty) {
      return value;
    }
    return null;
  }

  void onChangedPassword(String value) {
    var trimmedValue = value.trim();
    setState(() {
      _passwordValue = trimmedValue;
    });
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return value;
    }
    return null;
  }

  Future<void> onPressedLoginButton() async {
    setLoading(true);
    await Future.delayed(
      const Duration(seconds: 2),
      onLoadingFinished,
    );
  }

  void onLoadingFinished() {
    setLoading(false);
  }

  @override
  void dispose() {
    _loginIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        resizeToAvoidBottomInset: false,
        body: _loading != true
            ? Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 20,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '아이디',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 20,
                        ),
                        child: TextFormField(
                          controller: _loginIdController,
                          onChanged: onChangedLoginId,
                          validator: validateLoginId,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '로그인 아이디',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 20,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '비밀번호',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 20,
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          onChanged: onChangedPassword,
                          validator: validatePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '로그인 비밀번호',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 20,
                          ),
                          child: ElevatedButton(
                            onPressed: onPressedLoginButton,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Text(
                                '로그인',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  '아이디 : $_loginIdValue',
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  '비밀번호: $_passwordValue',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(
                child:
                    Lottie.asset('assets/lottie/18776-progress-dots-blue.json'),
              ),
      ),
    );
  }
}
