import 'package:flutter/material.dart';

class TextFieldWidget extends  StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();

}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          
          TextField(
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
            )
            
          ),

          const SizedBox(height: 20),

          TextField(
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