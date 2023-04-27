flutter clean
flutter pub get

echo "Generating string"
flutter pub run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart

echo "Generating classes and routes"
flutter packages pub run build_runner build --delete-conflicting-outputs

echo "Generating assets"
fluttergen -c pubspec.yaml