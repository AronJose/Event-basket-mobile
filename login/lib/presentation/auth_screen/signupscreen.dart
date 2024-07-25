import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/blocs/auth/auth_bloc.dart';
import 'package:login/blocs/role/role_bloc.dart';
import 'package:login/presentation/auth_screen/loginscreen.dart';
import 'package:login/presentation/auth_screen/roles_screen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController contactController = TextEditingController();

  final TextEditingController roleController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  String selectedRole = '';

  @override
  Widget build(BuildContext context) {
    //useEffect polathe sathanam ,InitState (stateFullwidgets) kittu
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<RoleBloc>().add(const RoleListGet());
      },
    );
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.loading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) =>
                const Center(child: CircularProgressIndicator()),
          );
        } else if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('images/signUp.png'),
                            ),
                          ),
                          const SizedBox(height: 50),
                          TextField(
                            controller: firstNameController,
                            decoration: InputDecoration(
                              hintText: "Enter your first name",
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 117, 183, 236),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: lastNameController,
                            decoration: InputDecoration(
                              hintText: "Enter your Last name",
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 117, 183, 236),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "Enter your Email",
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 117, 183, 236),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: contactController,
                            decoration: InputDecoration(
                              hintText: "Enter your Phone Number",
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 117, 183, 236),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 350,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Role : "),
                                RoleRadioButton(
                                  onRoleSelected: (role) {
                                    selectedRole = role;
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: "Enter your Password",
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 117, 183, 236),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              minimumSize:
                                  const WidgetStatePropertyAll(Size(130, 55)),
                              backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 107, 166, 214),
                              ),
                            ),
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.signUpEvent(
                                    firstName: firstNameController.text,
                                    lastName: lastNameController.text,
                                    email: emailController.text,
                                    contact: contactController.text,
                                    role: selectedRole,
                                    password: passwordController.text,
                                  ));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Loginscreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Loginscreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Already have an account? Log in",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
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
    );
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    contactController.dispose();
    roleController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
