import 'package:defensoriaemcampo/data/network/dtos/assistido_dto.dart';
import 'package:defensoriaemcampo/data/network/dtos/create_assistido_dto.dart';
import 'package:defensoriaemcampo/data/repository/assistido_repository.dart';
import 'package:defensoriaemcampo/data/repository/assistido_repository_impl.dart';
import 'package:defensoriaemcampo/domain/assistido.dart';
import 'package:defensoriaemcampo/ui/utils/form_validators.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssistidoCadastroAlteracaoPage extends StatefulWidget {
  final Assistido? assistido;

  const AssistidoCadastroAlteracaoPage({super.key, this.assistido});

  @override
  _AssistidoCadastroAlteracaoPageState createState() =>
      _AssistidoCadastroAlteracaoPageState();
}

class _AssistidoCadastroAlteracaoPageState
    extends State<AssistidoCadastroAlteracaoPage> {
  final _formKey = GlobalKey<FormState>();
  late final AssistidoRepository assistidoRepository;

  late TextEditingController _nomeController;
  late TextEditingController _cpfController;
  late TextEditingController _idadeController;

  String? _sexoSelecionado;
  String? _demandaSelecionada;

  @override
  void initState() {
    super.initState();
    assistidoRepository =
        Provider.of<AssistidoRepositoryImpl>(context, listen: false);

    _initTextControllers();
  }

  void _initTextControllers() {
    _nomeController = TextEditingController(text: widget.assistido?.nome ?? '');
    _cpfController = TextEditingController(text: widget.assistido?.cpf ?? '');
    _idadeController =
        TextEditingController(text: widget.assistido?.idade?.toString() ?? '');
    _sexoSelecionado = widget.assistido?.sexo;
    _demandaSelecionada = widget.assistido?.demanda;
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _cpfController.dispose();
    _idadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.assistido == null ? 'Novo Assistido' : 'Editar Assistido',
          style: theme.textTheme.headlineSmall,
        ),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2.0,
                    ),
                  ),
                ),
                validator: FormValidators.validateName,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _cpfController,
                decoration: InputDecoration(
                  labelText: 'CPF',
                  labelStyle: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2.0,
                    ),
                  ),
                ),
                validator: FormValidators.validateCpf,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _idadeController,
                decoration: InputDecoration(
                  labelText: 'Idade',
                  labelStyle: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: FormValidators.validateAge,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Sexo',
                  labelStyle: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2.0,
                    ),
                  ),
                ),
                value: _sexoSelecionado,
                onChanged: (String? newValue) {
                  setState(() {
                    _sexoSelecionado = newValue;
                  });
                },
                items: <String>['Masculino', 'Feminino']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18)),
                  );
                }).toList(),
                validator: FormValidators.validateSexo,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Demanda',
                  labelStyle: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 2.0,
                    ),
                  ),
                ),
                value: _demandaSelecionada,
                onChanged: (String? newValue) {
                  setState(() {
                    _demandaSelecionada = newValue;
                  });
                },
                items: <String>[
                  'Defesa da Mulher',
                  'Saúde',
                  'Cível',
                  'Consumidor',
                  'Criminal',
                  'Família e Sucessões'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18)),
                  );
                }).toList(),
                validator: FormValidators.validateDemanda,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Assistido novoAssistido = Assistido(
                      nome: _nomeController.text,
                      cpf: _cpfController.text,
                      idade: int.parse(_idadeController.text),
                      sexo: _sexoSelecionado,
                      demanda: _demandaSelecionada!,
                    );

                    if (widget.assistido == null) {
                      CreateAssistidoDto assistidoDto = CreateAssistidoDto(
                        nome: novoAssistido.nome,
                        sexo: novoAssistido.sexo,
                        cpf: novoAssistido.cpf,
                        idade: novoAssistido.idade,
                        demanda: novoAssistido.demanda,
                      );
                      assistidoRepository.createAssistido(
                          createAssistidoDto: assistidoDto);
                    } else {
                      CreateAssistidoDto assistidoDto = CreateAssistidoDto(
                        nome: novoAssistido.nome,
                        sexo: novoAssistido.sexo,
                        cpf: novoAssistido.cpf,
                        idade: novoAssistido.idade,
                        demanda: novoAssistido.demanda,
                      );
                      assistidoRepository.updateAssistido(
                          id: widget.assistido!.id!,
                          assistidoDto: assistidoDto);
                    }

                    Navigator.pop(context, novoAssistido);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  widget.assistido == null ? 'Cadastrar' : 'Salvar',
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
