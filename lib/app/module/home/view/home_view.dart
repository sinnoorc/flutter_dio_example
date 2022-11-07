import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: SafeArea(
        child: controller.obx(
            (state) => ListView.builder(
                  itemCount: state!.length,
                  itemBuilder: (context, index) {
                    final user = state[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(user.image!),
                      ),
                      title: Text(user.username!),
                      subtitle: Text(user.email!),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => controller.deleteUser(user.id.toString()),
                      ),
                    );
                  },
                ),
            onLoading: const Center(child: CircularProgressIndicator()),
            onError: (error) => Center(child: Text(error.toString()))),
      ),
    );
  }
}
