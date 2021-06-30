import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              SvgPicture.asset("assets/images/login_view.svg", height: 200,),
              Spacer(),
              makeInput(label: "Email"),
              makeInput(label: "Password",obsureText: true),

              MaterialButton(onPressed: (){

              },
                minWidth: double.infinity,
                color: Colors.indigoAccent[400],
                height: 60,
                child: Text("Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white70),),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              SizedBox(height: 10,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){

                    },
                      child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.w600),)),

                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label,obsureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
          ),
        ),
        SizedBox(height: 20,)

      ],
    );
  }
}
