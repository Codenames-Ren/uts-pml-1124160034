import 'package:flutter/material.dart';
import 'package:soal2_profile_page/models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;

  const EditProfilePage({super.key, required this.profile});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameCtrl;
  late TextEditingController _bioCtrl;
  late TextEditingController _emailCtrl;
  late TextEditingController _phoneCtrl;
  late TextEditingController _githubCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.profile.name);
    _bioCtrl = TextEditingController(text: widget.profile.bio);
    _emailCtrl = TextEditingController(text: widget.profile.email);
    _phoneCtrl = TextEditingController(text: widget.profile.phone);
    _githubCtrl = TextEditingController(text: widget.profile.github);
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _bioCtrl.dispose();
    _emailCtrl.dispose();
    _phoneCtrl.dispose();
    _githubCtrl.dispose();
    super.dispose();
  }

  void _save() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final newData = Profile(
      name: _nameCtrl.text.trim(),
      nim: widget.profile.nim,
      prodi: widget.profile.prodi,
      kelas: widget.profile.kelas,
      bio: _bioCtrl.text.trim(),
      email: _emailCtrl.text.trim(),
      phone: _phoneCtrl.text.trim(),
      github: _githubCtrl.text.trim(),
    );

    Navigator.pop(context, newData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profil")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: "Nama Lengkap",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Nama wajib diisi";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _bioCtrl,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: "Bio Singkat",
                  prefixIcon: Icon(Icons.notes),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailCtrl,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email wajib diisi";
                  }

                  final pola = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                  if (!pola.hasMatch(value.trim())) {
                    return "Format email tidak valid";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Nomor HP",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Nomor HP wajib diisi";
                  }

                  final pola = RegExp(r'^[0-9]{10,13}$');
                  if (!pola.hasMatch(value.trim())) {
                    return "Nomor HP harus angka 10-13 digit";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _githubCtrl,
                decoration: const InputDecoration(
                  labelText: "Akun GitHub",
                  prefixIcon: Icon(Icons.code),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton.icon(
                  onPressed: _save,
                  icon: const Icon(Icons.save),
                  label: const Text("Simpan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
