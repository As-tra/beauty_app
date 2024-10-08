import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: _buildDecoration(),
      child: TextField(
        style: Style.openSansSemiBold16.copyWith(
          color: const Color(0xffD3D3BE),
        ),
        cursorColor: const Color(0xffD3D3BE),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          fillColor: kPrimary.withOpacity(.7),
          filled: true,
          border: _buildBorder(),
          enabledBorder: _buildBorder(),
          hintText: "Search",
          hintStyle: Style.openSansRegular12.copyWith(
            color: const Color(0xffD3D3BE),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xffD3D3BE),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(13),
      boxShadow: [
        BoxShadow(
          offset: const Offset(2, 2),
          blurRadius: 3,
          spreadRadius: 0,
          color: const Color(0xff2D3B3E).withOpacity(.15),
        )
      ],
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(13),
      borderSide: BorderSide.none,
    );
  }
}
