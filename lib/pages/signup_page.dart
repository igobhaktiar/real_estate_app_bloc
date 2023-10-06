import 'package:asc_test/bloc/navigation/navigation_bloc.dart';
import 'package:asc_test/data/bloc/bloc/auth_bloc.dart';
import 'package:asc_test/data/bloc/bloc/auth_event.dart';
import 'package:asc_test/data/bloc/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, required void Function() show}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Stack(
              children: [
                Image.asset(
                  'images/house1.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        width: double.infinity,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 16,
                            left: 16,
                            bottom: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Sign Up',
                                style: GoogleFonts.poppins(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 32),
                              SizedBox(
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  child: TextField(
                                    controller: email,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      prefixIcon:
                                          const Icon(Icons.email_rounded),
                                      hintText: 'Your email',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  child: TextField(
                                    controller: password,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      prefixIcon:
                                          const Icon(Icons.key_outlined),
                                      hintText: 'Password',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  child: TextField(
                                    controller: confirmPassword,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      prefixIcon:
                                          const Icon(Icons.key_outlined),
                                      hintText: 'Confirm Password',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: FilledButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green)),
                                          onPressed: () {
                                            BlocProvider.of<AuthBloc>(context)
                                                .add(AuthRequest(
                                              confirmPassword.text,
                                              false,
                                              email.text,
                                              password.text,
                                            ));
                                          },
                                          child: Text(
                                            'Sign in',
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (state is AuthStateLoading) ...{
                                const CircularProgressIndicator()
                              },
                              if (state is SignUpResponseState) ...[
                                state.signUp.fold((left) {
                                  SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
                                    _dialogBuilder;
                                  });
                                  return const Text('');
                                }, (right) {
                                  return Text(right);
                                })
                              ],
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 50.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'images/google.png',
                                                height: 24,
                                                width: 24,
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                'Sign Up with Google',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Error',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        content: Text(message, style: const TextStyle(fontSize: 16),),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Oke'),
          ),
        ],
      );
    },
  );
}
