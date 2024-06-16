

# Profile Widget

Profile Widget package lets you add a beautiful Profile container to your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  profile_widget: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:profile_widget/profile_widget.dart';
```

## Example
There are a number of properties that you can modify:

- height
- width
- color
- background
- name
- role
- image
- shadow
- nameFontSize
- roleFontSize
- imageRadius
- padding
- margin

<hr>

<table>
<tr>
<td>

```dart
class ProfileScreen extends StatelessWidget {  
  const ProfileScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return ProfileWidget(
        image: 'assets/Icons/developer.jpeg',
        name: 'Paresh Chaudhary',
        role: 'Mern stack and flutter developer',
        githubLink: 'https://github.com/Paresh2578',
        instagramLink: 'https://www.linkedin.com/in/paresh-chaudhary-90b68224b',
        linkedinLink:'https://www.instagram.com/__paresh__2?igsh=OXZod2JkYXRhbHZ6' ,
        whatsappLink: 'whatsapp://send?phone=9327095244'
      );  
  }  
}
```

</td>
<td>
<img  src="https://i.ibb.co/9pz49nz/profile-Widget.png"  alt="">
</td>
</tr>
</table>
