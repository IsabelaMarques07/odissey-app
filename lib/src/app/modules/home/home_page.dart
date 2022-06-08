class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Column(children: [
            StandardForm(label: 'Galeria da NASA'),
            const SizedBox(height: 15),
            StandardForm(label: 'Gerenciar Viagens'),
            const SizedBox(height: 15),
            StandardForm(label: 'Pedido de Drone'),
            const SizedBox(height: 15),
            StandardButton(
              onPressed: () {},
              buttonText: 'Sair da Conta',
              title: '',
              label: '',
            )
          ]),
        ),
      ),
    );
  }
}
