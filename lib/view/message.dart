part of '../controller/message.dart';

class MessageView extends StatelessView<MessageScreen, MessageController> {
  const MessageView(MessageController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            // child: AnimatedBuilder(
            //     animation: controller.controller,
            //     builder: (context, child) {
            //       return Transform(
            //         alignment: Alignment.center,
            //         transform: Matrix4.identity()
            //           ..rotateY(controller.animation.value),
            //         child: Container(
            //           width: 100.w,
            //           height: 100.h,
            //           decoration: BoxDecoration(
            //             color: AppColors.orange,
            //             borderRadius: BorderRadius.circular(10.r),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: AppColors.light.withOpacity(0.35),
            //                 offset: const Offset(0, 10),
            //                 blurRadius: 35,
            //                 spreadRadius: 10,
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     }),
            ));
  }
}
