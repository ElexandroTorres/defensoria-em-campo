import 'package:defensoriaemcampo/domain/assistido.dart';
import 'package:defensoriaemcampo/ui/pages/assistido_cadastro_alteracao_page.dart';
import 'package:flutter/material.dart';

class AssistidoDetailsPage extends StatefulWidget {
  final Assistido assistido;

  const AssistidoDetailsPage({super.key, required this.assistido});

  @override
  _AssistidoDetailsPageState createState() => _AssistidoDetailsPageState();
}

class _AssistidoDetailsPageState extends State<AssistidoDetailsPage> {
  late Assistido assistidoAtual;

  @override
  void initState() {
    super.initState();
    assistidoAtual = widget.assistido;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: assistidoAtual.sexo == "Masculino"
                      ? const AssetImage('assets/icons/man_icon.png')
                      : const AssetImage('assets/icons/woman_icon.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              assistidoAtual.nome,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              "Idade: ${assistidoAtual.idade}",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (assistidoAtual.cpf != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Text(
                "CPF: ${assistidoAtual.cpf!}",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              "Sexo: ${assistidoAtual.sexo}",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              "Demanda: ${assistidoAtual.demanda}",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        onPressed: () {
          Navigator.push<Assistido>(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AssistidoCadastroAlteracaoPage(assistido: assistidoAtual),
            ),
          ).then((result) {
            if (result != null) {
              setState(() {
                assistidoAtual = result;
              });
            }
          });
        },
        child: Icon(
          Icons.edit,
          color: Theme.of(context).colorScheme.onTertiary,
        ),
      ),
    );
  }
}
