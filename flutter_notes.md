# Flutter Notes


**install and set the path**
https://docs.flutter.dev/get-started/install

## To create flutter project
`flutter create newprojectname` 

## To start flutter application
`flutter run`

## To add flutter dependencies
go to pubspec.yaml and add the dependencies and restart the flutter

## To resolving dependencies the flutter
`flutter pub get `
`dart pub get`

#### for dart errors use this comment to fix
- dart fix --dry-run
- dart fix --apply 



# Extensions 
- bracket pair colorizer 2
- Awesome flutter snippet
- better comments
- material icon theme



## lib folder
main.dart --  main file where app starts
- pages folder
- components folder

## pages naming
only lowercase letters separated with underscore eg: 
- pagename.dart 
- pagename = home_page.dart 

## partial naming

starts with underscore
eg:

- widgetName_partialname

- partial name = _home_button

## class naming

eg: classname = HomeButton


## shortcut to refactor code
- rightclick and click refactor --to wrap contents.


# widgets:
widgets 
- stateful widgets --dynamic contents that changes according to conditions or needs.
- stateless widgets --static contents that won't change.

### Widgets Catalog:
`https://docs.flutter.dev/ui/widgets`
----------------------------------------------------------------
- SizedBox --managing spacing and layout by defining a fixed width and height.
- Text --displaying and styling text.
- Icon --displaying and styling icons.
- image.network --get images from internet.
- image.asset --get images from local filesystem .You need to activate the assets:-image option in pubspec.yaml file.
- gestureDetector --triggers a click or any action .



## ui widgets

- https://github.com/ionicfirebaseapp/getwidget

- https://pub.dev/documentation/getwidget/latest/

- https://docs.getwidget.dev/

- to add 
--flutter pub add getwidget