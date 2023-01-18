import 'package:flutter/material.dart';

class StepperComponent extends StatefulWidget {
  const StepperComponent({Key? key}) : super(key: key);

  @override
  State<StepperComponent> createState() => _StepperComponentState();
}

class _StepperComponentState extends State<StepperComponent> {
  int initialStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Stepper App",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),
        ),
        backgroundColor: Colors.red.shade400,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              currentStep: initialStep,
              onStepContinue: () {
                setState(() {
                  if (initialStep < 2) {
                    ++initialStep;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (initialStep > 0) {
                    --initialStep;
                  }
                });
              },
              onStepTapped: (val) {
                setState(() {
                  initialStep = val;
                });
              },
              steps: [
                Step(
                  isActive: (initialStep>=0)?true:false,
                  title: const Text("Sign In",style: TextStyle(fontSize: 20),),
                  content: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Full Name",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline_sharp),
                          hintText: "Email",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Password",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Confirm Password",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),


                ),
                Step(
                  isActive: (initialStep>=1)?true:false,
                  title: const Text("Log In",style: TextStyle(fontSize: 20),),
                  content: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "User Name",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline_sharp),
                          hintText: "Password",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Step(
                  state: StepState.complete,
                  isActive: (initialStep>=2)?true:false,
                  title: const Text("Home",style: TextStyle(fontSize: 20),),
                  content: Column(
                    children: const [Text("Done",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
