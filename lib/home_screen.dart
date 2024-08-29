import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstNumTEController = TextEditingController();
  final TextEditingController _secondNumTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  double _Result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller:_firstNumTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "First Number",
                  labelText: "First Number",
                ),
                validator:(String? value) {
                  if(value == null || value.isEmpty){
                    return "Enter a Value";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller:_secondNumTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Second Number",
                  labelText: "Second Number",
                ),
                validator:(String? value) {
                  if(value == null || value.isEmpty){
                    return "Enter a Value";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              _buildButtonBat(),//Widget extraction
              const SizedBox(height: 16,),
              Text('Result: $_Result',style: const TextStyle(
                fontSize: 18
              ),),
              
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildButtonBat(){
    return OverflowBar(
      alignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: (){_OnTapAddButton();}, child: const Text("+",style: TextStyle(fontSize: 50),),),
        TextButton(onPressed: _OnTapSubstractButton, child: const Text("-",style: TextStyle(fontSize: 50)),),
        TextButton(onPressed: (){_OnTapMultiplyButton();}, child: const Text("*",style: TextStyle(fontSize: 50)),),
        TextButton(onPressed: (){_OnTapdivisionButton();}, child: const Text("/",style: TextStyle(fontSize: 50)),),
      ],
    );
  }

  void _OnTapAddButton(){
    if(_formkey.currentState!.validate()){
      double firstnumber= double.tryParse(_firstNumTEController.text)??0 ;
      double secondtnumber= double.tryParse(_secondNumTEController.text)??0 ;
      _Result=firstnumber+secondtnumber;
      setState(() {

      });
    }
  }
  void _OnTapSubstractButton(){
    if(_formkey.currentState!.validate()){
      double firstnumber= double.tryParse(_firstNumTEController.text)??0 ;
      double secondtnumber= double.tryParse(_secondNumTEController.text)??0 ;
      _Result=firstnumber+secondtnumber;
      setState(() {

      });
    }

  }
  void _OnTapMultiplyButton(){
    if(_formkey.currentState!.validate()){
      double firstnumber= double.tryParse(_firstNumTEController.text)??0 ;
      double secondtnumber= double.tryParse(_secondNumTEController.text)??0 ;
      _Result=firstnumber+secondtnumber;
      setState(() {

      });
    }

  }
  void _OnTapdivisionButton(){
    if(_formkey.currentState!.validate()){
      double firstnumber= double.tryParse(_firstNumTEController.text)??0 ;//?? means if the _firstNumTEController.text is empty it will set value for first number 0 and if not it will collect the number
      double secondtnumber= double.tryParse(_secondNumTEController.text)??0 ;
      _Result=firstnumber+secondtnumber;
      setState(() {

      });
    }
  }
  @override
  void dispose() {
    _firstNumTEController.dispose();
    _secondNumTEController.dispose();
    super.dispose();
  }
}
