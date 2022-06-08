class StandardForm extends StatelessWidget {
  final String label;
  StandardForm({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        label: Text(label),
      ),
    );
  }
}
