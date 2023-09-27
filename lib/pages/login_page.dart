import 'package:flutter/material.dart';
import 'package:project_1/components/app_textfield.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://localhost:3000';


class LoginPage extends StatelessWidget {
  final loginRoute = '$baseUrl/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    doLogin();
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
                children:[
                  Spacer(),
                  const Text('Hello,Welcome back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height:14),
                  const Text('Login to Continue',
                    style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  const SizedBox(height:60),
                  AppTextField(placeholder: 'Username'),
                  const SizedBox(height:16),
                  AppTextField(placeholder: 'Password'),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(onPressed: () {}, child: const Text('Forgot Password'
                    ,style: TextStyle(color: Colors.red,),
                    ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/main');
                    }, child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  const Text('Or Sign in With',style: TextStyle(color: Colors.white),),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/googlelogo.png',width: 20,),
                          const SizedBox(width: 12,),
                          const Text('Login with Google'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/facebook2.png',width: 20, ),
                          const SizedBox(width: 12,),
                          const Text('Login with Facebook'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Don't have an account ?",style: TextStyle(color: Colors.white),),
                       SizedBox(width: 6,),
                       Text("Sign up",style: TextStyle(color: Colors.amber,decoration: TextDecoration.underline),),
                    ],
                  ),
                  Spacer(),
                ]
            ),
          ),
        ),
      ),
    );
  }

  Future<String> doLogin() async{
    final response = await http.post(Uri.parse(loginRoute));
    if(response.statusCode == 200){
      consol.log()
      return response.body;
    }else{
      print('You have an error:');
      return throw Exception('Error');
    }
  }
}
