import 'package:chat_app_mini_project/constants/colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  TextEditingController _PhoneNumberCantroller = TextEditingController();
  TextEditingController _otpNumberCantroller = TextEditingController();

  String countrtyCode = "+91";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                'assets/chat.png',
                fit: BoxFit.cover,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("wellcome  ",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700)),
                    Text("Enter your phone number to login"),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _PhoneNumberCantroller,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.length != 10)
                              return "Invalid Phone Number";
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: CountryCodePicker(
                                onChanged: (value) {
                                  print(value.dialCode);
                                  countrtyCode = value.dialCode!;
                                },
                                initialSelection: "IN",
                              ),
                              labelText: "enter your phone number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('sand otp'),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("OTP Varificaton"),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("Enter the 6 digit OTP"),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Form(
                                            key: _formKey1,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: _otpNumberCantroller,
                                              validator: (value) {
                                                if (value!.length != 6)
                                                  return "Invalid otp";
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText:
                                                      "Enter the otp received",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12))),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              if (_formKey1.currentState!.validate()){}
                                            },
                                            child: Text("submit"))
                                      ],
                                    ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimartColor,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
