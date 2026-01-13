import 'package:flutter/material.dart';


class AddFormField extends StatelessWidget {
  final String hint;
  final int ? lines;
  final Widget? suffixIcon;
  final bool ?readOnly;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  const AddFormField({super.key, required this.hint,  this.lines, this.suffixIcon, this.readOnly, this.onTap, this.validator, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: lines,
      readOnly: readOnly?? false,
      onTap: onTap,
      validator: validator??(value){
        if(value==null||value.isEmpty){
          return "this is required";
        }
        return null;
      },

      onTapOutside: (value){
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
        hintText:hint,
      ),
    );
  }
}
