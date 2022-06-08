class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createAccount),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Column(children: [
            StandardForm(label: 'Nome'),
            const SizedBox(height: 15),
            StandardForm(label: 'Sobrenome'),
            const SizedBox(height: 15),
            StandardForm(label: 'E-mail'),
            const SizedBox(height: 15),
            StandardForm(label: 'Confirmar E-mail'),
            const SizedBox(height: 15),
            StandardForm(label: 'Senha'),
            const SizedBox(height: 15),
            StandardForm(label: 'Confirmar Senha'),
            const SizedBox(height: 15),
            StandardButton(
              onPressed: () {},
              buttonText: 'Criar Conta',
              title: '',
              label: '',
            )
          ]),
        ),
      ),
    );
  }
}
