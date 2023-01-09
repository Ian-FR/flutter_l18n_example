import 'package:flutter/material.dart';
import 'package:l18n_example/l10n/app_l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onLanguageChange});

  final ValueChanged<Locale>? onLanguageChange;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  String name = '';
  late Color color;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    color = Colors.primaries[
        AppL10n.supportedLocales.indexOf(AppL10n.of(context).locale)];
  }

  confirmName() {
    setState(() {
      name = nameController.text.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppL10n.of(context).homeTranslation;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (name.isNotEmpty)
              Expanded(child: Center(child: Text(l10n.hello(name))))
            else
              const Spacer(),
            Wrap(
              spacing: 16,
              children: AppL10n.supportedLocales
                  .map(
                    (locale) => MyChip(
                      label: locale.languageCode,
                      color: Colors
                          .primaries[AppL10n.supportedLocales.indexOf(locale)],
                      onTap: () => widget.onLanguageChange?.call(locale),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 24),
            TextField(
              cursorColor: color,
              decoration: InputDecoration(
                labelText: l10n.title,
                labelStyle: TextStyle(color: color),
                border: MaterialStateUnderlineInputBorder.resolveWith(
                  (_) => UnderlineInputBorder(
                    borderSide: BorderSide(color: color),
                  ),
                ),
              ),
              controller: nameController,
              autofocus: true,
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: confirmName,
              child: Text(
                l10n.greetButtonLabel,
                style: TextStyle(color: color),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class MyChip extends StatelessWidget {
  const MyChip({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
  });

  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
