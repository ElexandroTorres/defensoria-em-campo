import 'package:defensoriaemcampo/data/repository/assistido_repository.dart';
import 'package:defensoriaemcampo/data/repository/assistido_repository_impl.dart';
import 'package:defensoriaemcampo/domain/assistido.dart';
import 'package:defensoriaemcampo/ui/pages/assistido_cadastro_alteracao_page.dart';
import 'package:defensoriaemcampo/ui/widgets/infos_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class AssistidosListPage extends StatefulWidget {
  const AssistidosListPage({super.key});

  @override
  State<AssistidosListPage> createState() => _AssistidosListPageState();
}

class _AssistidosListPageState extends State<AssistidosListPage> {
  static const _pageSize = 10;

  late final AssistidoRepositoryImpl assistidoRepository;
  late final PagingController<int, Assistido> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();
    assistidoRepository =
        Provider.of<AssistidoRepositoryImpl>(context, listen: false);
    _pagingController.addPageRequestListener(
      (pageKey) async {
        _fetchPage(pageKey);
      },
    );
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final assistidos = await assistidoRepository.getAssistidos(
          page: pageKey, limit: _pageSize);

      print("MOSTRNADO OS IDS::::");
      for (int i = 0; i < assistidos.length; i++) {
        print("id: ${assistidos[i].id}");
      }

      final isLastPage = assistidos.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(assistidos);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(assistidos, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pagingController.dispose();
  }

  Future<void> _handleDismiss(Assistido assistido, BuildContext context) async {
    try {
      await assistidoRepository.removeAssistido(id: assistido.id!);

      _pagingController.refresh();
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text("Erro ao remover assistido: ${error.toString()}")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Defensoria em Campo")),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: PagedListView<int, Assistido>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Assistido>(
          itemBuilder: (context, assistido, index) => Dismissible(
            key: Key(assistido.id!),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              _handleDismiss(assistido, context);
            },
            background: Container(
              color: Colors.red,
              child: const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
              ),
            ),
            child: InfosCardWidget(assistido: assistido),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        onPressed: () async {
          final novoAssistido = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AssistidoCadastroAlteracaoPage(),
            ),
          );

          if (novoAssistido != null) {
            _pagingController.refresh();
          }
        },
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.onTertiary,),
      ),
    );
  }
}
