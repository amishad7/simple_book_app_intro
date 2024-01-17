import 'package:flutter/material.dart';
import 'package:untitled6/app/utils/constant/constant.dart';

class sec_home extends StatelessWidget {
  const sec_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            // opacity: 0.3,
            image: NetworkImage(
                'https://i.pinimg.com/564x/49/ad/21/49ad21b838b7218da1f42498a5229305.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Transform.translate(
              offset: const Offset(30, 100),
              child: Text(
                "Pick your Favourite",
                style: Constant.subText,
              ),
            ),
            Transform.translate(
              offset: const Offset(40, 250),
              child: Container(
                width: MediaQuery.sizeOf(context).width / 1.2,
                height: MediaQuery.sizeOf(context).height / 1.9,
                decoration: BoxDecoration(
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(34),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.5,
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/c7/0a/71/c70a71191be175358431b34216655688.jpg"),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(67, 290),
              child: Column(
                children: [
                  Text(
                    "Crime &",
                    style: Constant.subText,
                  ),
                  Text(
                    "Mystery",
                    style: Constant.subText,
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(240, 600),
              child: Column(
                children: [
                  Text(
                    "All ",
                    style: Constant.subText,
                  ),
                  Text(
                    "Fictions",
                    style: Constant.subText,
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(78, 740),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.green.shade50,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'main');
                      },
                      child: Text("Continue", style: Constant.subbuttonText),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
