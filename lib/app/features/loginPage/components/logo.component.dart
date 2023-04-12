import 'package:flutter/material.dart';
import 'package:teste_wbc/app/constants/url.constant.dart';
import 'package:teste_wbc/app/features/core/components/loading.component.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.network(UrlConstant.clubeOnLogo,
              loadingBuilder: (context, child, progress) =>
                  progress == null ? child : const LoadingComponent()),
        ),
      );
}
