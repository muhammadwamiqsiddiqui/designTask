import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: "What would you like to find?",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid
                    )
                )
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: filterColor
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: IconButton(
              onPressed: (){
              },
              icon: const Icon(
                Icons.filter_list_outlined,
                color: Colors.white,
              ),
              color: secondaryColor,
            ),
          ),
        )
      ],
    );
  }
}