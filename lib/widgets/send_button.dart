import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final VoidCallback onPressed; // Callback function when the button is pressed.
  final String text; // Label text for the button.

  const SendButton(
      {required this.onPressed, // Required callback for button press.
      required this.text,
      super.key // Required text for the button.
      });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Calls the provided callback when pressed.
      style: ElevatedButton.styleFrom(
         padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),backgroundColor: Colors.orangeAccent, // Button background color.
        
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(30), // Rounded corners for the button.
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 15.0, horizontal: 30.0), // Padding inside the button.
        child: Text(
          text, // Displays the button text.
          style: const TextStyle(
            color: Colors.white, // Text color for the button.
            fontSize: 16, // Font size for the button text.
          ),
        ),
      ),
    );
  }
}
