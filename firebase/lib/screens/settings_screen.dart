import 'package:firebase/core/localization/locale_manager.dart';
import 'package:firebase/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    final localeManager = Provider.of<LocaleManager>(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localeManager.translate('dark_theme')),
            Switch(
                value: themeManager.themeMode == ThemeMode.dark,
                onChanged: (value){
                  themeManager.toggleTheme();
                },
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localeManager.translate('language')),
            const SizedBox(width: 10),
            DropdownButton<Locale>(
              value: localeManager.currentLocale,
              onChanged: (Locale? newLocale){
                if(newLocale != null){
                  localeManager.changeLocale(newLocale);
                }
              },
              items:
                const[
                  DropdownMenuItem(
                    value: Locale('en'),
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: Locale('tr'),
                    child: Text('Türkçe'),
                  ),
                ],
            ),
          ],
        ),
      ],
    );
  }
}