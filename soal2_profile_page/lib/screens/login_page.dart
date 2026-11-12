import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _loading = false;
  bool _hide = true;

  final String _user = "Bayu";
  final String _pass = "945313";

  @override
  void dispose() {
    _userCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _loading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) {
      return;
    }

    if (_userCtrl.text == _user && _passCtrl.text == _pass) {
      Navigator.pushReplacementNamed(context, "/home");
    }
    setState(() {
      _loading = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Username atau Password Salah!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Icon(
                  Icons.account_circle,
                  size: 96,
                  color: Theme.of(context).colorScheme.primary,
                ),

                const SizedBox(height: 8),

                Text(
                  "Portal Login Mahasiswa",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                const SizedBox(height: 24),

                TextFormField(
                  controller: _userCtrl,
                  decoration: const InputDecoration(
                    labelText: "Usename",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Username wajib diisi";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),
                TextFormField(
                  controller: _passCtrl,
                  obscureText: _hide,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _hide ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _hide = !_hide;
                        });
                      },
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "Password minimal 6 karakter";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                    onPressed: _loading ? null : _login,
                    child: _loading
                        ? const SizedBox(
                            width: 22,
                            height: 22,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text("Masuk"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
