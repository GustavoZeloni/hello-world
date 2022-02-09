Future<String> createMessage() async{
  var message = await delayMessage();
   return '$message';
}

Future<String> delayMessage() async =>
    Future.delayed(
      const Duration(seconds: 2),
      () => 'hello world!',
    );
    
Future<void> main() async{
  print('Await a second...');
  print(await createMessage());
}