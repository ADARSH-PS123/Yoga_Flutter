import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback voidCallback;
  final String buttonName;
  final bool isLoading;
  const ButtonWidget({
    required this.buttonName,
    required this.voidCallback,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff07F9FB),
            Color(0xff54B7EE),
          ],
        ),
      ),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color(0xff54B7EE);
            }
            return const Color(0xff02F9FE);
          },
        ), shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (Set<MaterialState> states) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20));
          },
        ), padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
                (Set<MaterialState> states) {
          return const EdgeInsets.symmetric(vertical: 15);
        })),
        onPressed: voidCallback,
        child: isLoading
            ? const SizedBox(
                height: 30,
                width: 30,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              )
            : Text(
                buttonName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
      ),
    );
  }
}
