import 'package:flutter/material.dart';

class TextFieldWidget extends  StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();

}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _bioController;
  String email = '';


  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _bioController = TextEditingController();
    _emailController.addListener(_emailListener);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _emailController.removeListener(_emailListener);
    super.dispose();
  }

  void _emailListener() {
    print(_emailController.text);
  }
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(email),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            readOnly: false,
            textCapitalization: TextCapitalization.words,
            autocorrect: true,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              prefixIcon: const Icon(Icons.email),
              suffixIcon: const Icon(Icons.remove_red_eye),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.blue)
              )
            ),
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
            
            
          ),

          const SizedBox(height: 20),

          TextField(
            controller: _passwordController,
            keyboardType: TextInputType.text,
            readOnly: false,            
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              prefixIcon: const Icon(Icons.security),
              suffixIcon: const Icon(Icons.remove_red_eye),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.blue)
              )
            ),
            onChanged: (value) {
              debugPrint(value);
            },
            onEditingComplete: () {
              debugPrint('OnEditingComplete');
            },
            
          ),

          const SizedBox(height: 20),

          TextField(
            controller: _bioController,
            keyboardType: TextInputType.text,
            readOnly: false,
            textCapitalization: TextCapitalization.words,
            autocorrect: true,
            autofocus: true,
            minLines: 3,
            maxLines: 5,
            maxLength: 200,
            decoration: InputDecoration(
              labelText: 'Bio',
              hintText: 'Enter your detail',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),              
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.blue)
              )
            )
            
          ),

          
        
        ],
      ),
    );
  }
}