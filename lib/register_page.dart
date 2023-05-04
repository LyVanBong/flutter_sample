import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();
  String _verificationCode = '';

  void _sendOTP() {
    // Gửi mã OTP đến số điện thoại được nhập trong form
    // và lưu mã OTP vào biến _verificationCode
    // Ở đây chúng ta sẽ giả sử mã OTP là "123456"
    setState(() async {
      var phone = _phoneController.text;

      var request = http.Request('POST',
          Uri.parse('https://otp.ole777nhacai.com/api/v1/otp/send/$phone'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        _verificationCode = await response.stream.bytesToString();
      } else {
        print(response.reasonPhrase);
      }

      // _verificationCode = '123456';
    });
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      // Xử lý đăng ký tài khoản ở đây
      print(_verificationCode);
      if (_verificationCode == _otpController.text) {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.rightSlide,
          title: 'Thông báo',
          desc: 'Bạn đã đăng ký thành công',
          btnOkOnPress: () {},
        )..show();
      } else {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Thông báo',
          desc: 'Mã otp chưa chính xác',
          btnOkOnPress: () {},
        )..show();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký tài khoản'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 100, bottom: 100),
          child: Column(
            children: [
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Số điện thoại',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập số điện thoại';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Mã OTP',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mã OTP';
                  } else if (value != _verificationCode) {
                    return 'Mã OTP không chính xác';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _sendOTP,
                child: Text('Gửi mã OTP'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _register,
                child: Text('Đăng ký'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
