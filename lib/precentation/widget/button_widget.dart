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
      width: 250,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
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
                height: 20,
                width: 20,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              )
            : Text(
                buttonName,
                style: const TextStyle(
                  fontFamily: "Nexa",
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
      ),
    );
  }
}
