import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_auth_screen/views/LoginView.dart';
import 'package:login_auth_screen/views/SignupView.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text("Automatic identity verification which enable you to verify your identity",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
              SizedBox(height: 20,),
              Spacer(),
              SvgPicture.asset("assets/images/devloper.svg", height: 300,),
              SizedBox(height: 20,),
              Spacer(),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginView();
                }));
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
              SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignupView();
                }));
              },
                minWidth: double.infinity,
                color: Colors.redAccent[400],
                height: 60,
                child: Text("Sign Up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white70),),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
