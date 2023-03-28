import 'package:flutter/material.dart';
import 'package:note_app/screens/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return const EditNoteView();
        })
        );
      },
        child: Container(
      padding:const EdgeInsets.only(top: 24.0,bottom: 24.0,left: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Fultter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
              ),
            ),
            subtitle:Padding(
            padding:const EdgeInsets.only(
              top:16.0,
              bottom: 16.0,
            ),
              child: Text(
              'Build your Career with Hanaa Nassef',
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 18.0
              ),
            ),
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.delete,
              //  FontAwsomeIcon.trash,
                color: Colors.black,
                size: 24.0,
              ),
            ),

          ),
          Padding(
            padding:const EdgeInsets.only(right: 16),
            child:Text(
            '21 May , 2022',
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
              fontSize: 16.0,
            ),
          ),
          ),
        ],
      ),
    ),
    );
  }
}
