class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/robô.jpeg',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'OdysseyApp',
              ),
              const SizedBox(height: 15),
              StandardForm(label: eMail),
              const SizedBox(height: 15),
              StandardForm(label: password),
              const SizedBox(height: 30),
              StandardButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                buttonText: login,
                title: '',
                label: '',
              ),
              const SizedBox(height: 15),
              StandardButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountPage(),
                    ),
                  );
                },
                buttonText: createAccount,
                title: '',
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
