import 'package:example/core.dart';
import 'package:example/main.dart';
import 'package:flutter/material.dart';

class LsCreatePinController extends State<LsCreatePinView>
    implements MvcController {
  static late LsCreatePinController instance;
  late LsCreatePinView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String pin = "";

  updatePin(int number) async {
    /*
    TODO: --
    1. Buat if statement 
    ###
    if (pin.length >= 4) return;
    ###

    Ini digunakan agar user tidak menginput lebih dari 4 karakter pin

    2. Ok, kita akan menambahkan digit pin,
    ke dalam variabel pin. Gunakan kode ini:
    ###
    if (pin.length >= 4) return;
    pin += number.toString();
    setState(() {});
    ###

    3. Nice, sekarang kita akan menyimpan PIN-nya
    Jika pin yang di input sudah 4 digit.
    Gunakan kode ini:
    if (pin.length == 4) {
      await mainStorage.put("pin", pin);
      await showInfoDialog("Your PIN has been created!");
      Get.back();
    }

    4. Coba masukkan PIN, di isi apa saja yang mudah di ingat
    Maka PIN itu akan disimpan ke localStorage.
    Ingat PIN tersebut karena kita akan menggunakannya di task
    Berikut-nya.

    Ok, jika alert muncul, dan kamu kembali ke halaman sebelum-nya
    Tasks ini selesai
    */
    if (pin.length >= 4) return;
    pin += number.toString();
    setState(() {});
    if (pin.length == 4) {
      await mainStorage.put("pin", pin);
      await showInfoDialog("Your PIN has been creates");
      Get.back();
    }
  }
}
