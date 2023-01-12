import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final appFn = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please Login',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Username'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: handleSubmit,
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void handleSubmit() async {
    // try {
    //   final uuidRes = await MomoSandboxServices.getUuid();
    //   final uuid = jsonDecode(uuidRes.body);

    //   final apiUserRes = await MomoSandboxServices.createApiUser(
    //     xRefId: uuid,
    //     ocpSubKey: '88c2e58676fa4c32bac01770719a20e6',
    //   );
    // } catch (e) {
    //   print(StackTrace.current);
    // }
  }
}
