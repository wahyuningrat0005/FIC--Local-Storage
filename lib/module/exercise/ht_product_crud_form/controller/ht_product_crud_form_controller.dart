import 'package:example/core.dart';
import 'package:flutter/material.dart';

import '../../../../config.dart';

class HtProductCrudFormController extends State<HtProductCrudFormView>
    implements MvcController {
  static late HtProductCrudFormController instance;
  late HtProductCrudFormView view;
  String photo = "";
  String productName = "";
  double price = 0.0;
  String description = "";

  @override
  void initState() {
    instance = this;
    if (widget.item != null) {
      photo = widget.item!["photo"];
      productName = widget.item!["productName"];
      price = widget.item!["price"];
      description = widget.item["description"];
    }
    /*
    TODO: --
    17. yuk kita atur nilai awal-nya
    gunakan kode ini:
    ###
    if (widget.item != null) {
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
      description = widget.item!["description"];
    }
    ###

    18. Kembali ke View, masuk ke point 19
    */
    
    super.initState();
    
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
    
    bool get isEditMode {
    return widget.item != null;
  }

  /*
  TODO: --
  27. Kita ingin membuat tombol save bisa digunakan
  Untuk mengupdate dan menambahkan data
  Ok, pertama2 buat sebuah getter untuk 
  mengecek apakah form dibuka dalam
  mode edit atau create.

  !Gunakan kode ini:
  bool get isEditMode {
    return widget.item!=null;
  }

  28. Nice, tahap ini akan sedikit sulit
  Untuk kamu yang belum terbiasa~

  pada tombol save, buat sebuah statement if
  seperti ini: (setelah showLoading)

  if (isEditMode){

  }
  else {
      ! copy http request untuk menambahkan data kamu yang sudah ada,
      ! kesini
  }

  29. Ok, lanjut~
  if (isEditMode){
    ! Dibagian ini
  }
  else {
     ...
  }
  
  Tambahkan varibel ini:
  ! var id = widget.item!["id"];

  30. Lalu, setelah kode di atas, Buat sebuah http request:
  ! snippet : dio_post

  @POST
  @URL
  "${AppConfig.baseUrl}/products/$id",

  ! @DATA
  data: {
      "photo": photo,
      "product_name": productName,
      "price": price,
      "description": description,
  },

  31. Yuk, buka ListView, klik salah satu item,
  Maka kamu akan masuke ke dalam Form dalam mode edit
  Ubah harga-nya menjadi 150 dan Save

  32. Jika harga di dalam list berubah,
  Kamu sudah berhasil mengupdate data baru,
  Lanjut ke tahap terakhir
  Yaitu fungsi delete

  Buka HtProductCrudListController,
  fokus ke function delete() async {}

  Point 33!
  */

  save() async {
    if (!formKey.currentState!.validate()) return;
    showLoading();

    /*
    TODO: --
    8. buat http request post
    ! snippet: dio_post 

    @POST
    @URL
    "${AppConfig.baseUrl}/products",

    @DATA
    data: {
      "photo": photo,
      "product_name": productName,
      "price": price,
      "description": description,
    },

    9. Ok, tidak perlu cek apa apa dulu untuk sekarang
    Lanjut ke point 10,
    Kembali ke HtProductCrudListController (Controller dari PRODUCT)
    */
    var response = await Dio().post(
    "${AppConfig.baseUrl}/products",
    options: Options(
    headers: {
    "Content-Type": "application/json",
    },
    ),
    data: {
     "photo": photo,
      "product_name": productName,
      "price": price,
      "description": description,
    },
    );
    Map obj = response.data;

    //! ##########################
    //! Jangan edit kode dibawah
    //! ##########################
    hideLoading();
    Get.back();
  }
}
