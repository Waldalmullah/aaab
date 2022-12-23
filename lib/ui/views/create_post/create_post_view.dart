import 'dart:io';

import 'package:aaab/app/utils/constants.dart';
import 'package:aaab/ui/widgets/dumb_widgets/text_field.dart';
import 'package:aaab/ui/widgets/smart_widgets/bottom_navy_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './create_post_view_model.dart';

class CreatePostView extends StatelessWidget {
  const CreatePostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreatePostViewModel>.reactive(
      viewModelBuilder: () => CreatePostViewModel(context),
      onModelReady: (CreatePostViewModel model) async => await model.init(),
      builder:
          (BuildContext context, CreatePostViewModel model, Widget? child) {
        return GestureDetector(
          onTap: () => model.removeFocus(),
          child: Scaffold(
            bottomNavigationBar: BottomNavyBarWidget(currentIndex: 1),
            appBar: _appBar(context),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _addImageWidget(context, model),
                    const SizedBox(height: 16),
                    _textFields(model),
                    const SizedBox(height: 16),
                    _selectWidgets(model),
                    const SizedBox(height: 16),
                    _submitButton(model)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Material _submitButton(CreatePostViewModel model) {
    return Material(
      color: model.isValid ? AppColors.yellow : Colors.grey.shade400,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: (model.isValid ? () => model.onSubmit() : null),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          width: double.infinity,
          child: Center(
            child: model.isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: AppColors.textColor))
                : Text(
                    'Create Post',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: model.isValid
                          ? AppColors.maroni
                          : Colors.grey.shade600,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  AppBar _appBar(context) {
    return AppBar(
      title: const Text(
        'Create Post',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      foregroundColor: AppColors.maroni,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    );
  }

  Column _selectWidgets(CreatePostViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Text(
            'Select type',
            style: TextStyle(
                color: Color(0xff59344F), fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: DropdownButton<String>(
                    value: model.petType,
                    hint: const Text('Pet Type'),
                    underline: const SizedBox(),
                    borderRadius: BorderRadius.circular(10),
                    isExpanded: true,
                    items: List.generate(
                        model.petTypes.length,
                        (index) => DropdownMenuItem(
                              value: model.petTypes[index],
                              child: Text(model.petTypes[index]),
                            )),
                    onChanged: (change) => model.onPetTypeChange(change)),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Text(
            'Select status',
            style: TextStyle(
                color: Color(0xff59344F), fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: DropdownButton<String>(
                  value: model.selectedStatus,
                  hint: const Text('Status'),
                  underline: const SizedBox(),
                  borderRadius: BorderRadius.circular(10),
                  isExpanded: true,
                  items: List.generate(
                      model.status.length,
                      (index) => DropdownMenuItem(
                            value: model.status[index],
                            child: Text(model.status[index]),
                          )),
                  onChanged: (change) => model.onStatusChange(change),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column _textFields(CreatePostViewModel model) {
    return Column(
      children: [
        TextFieldWidget(title: 'Title', controller: model.title),
        const SizedBox(height: 16),
        TextFieldWidget(title: 'Pet Name', controller: model.petName),
        const SizedBox(height: 16),
        TextFieldWidget(
            title: 'Contact Number', controller: model.contactNumber),
        const SizedBox(height: 16),
        TextFieldWidget(
          title: 'Description',
          controller: model.description,
          maxLine: 3,
        ),
      ],
    );
  }

  Material _addImageWidget(BuildContext context, CreatePostViewModel model) {
    return Material(
      borderRadius: BorderRadius.circular(25),
      color: Colors.grey.shade200,
      child: InkWell(
        onTap: () async {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {
                    model.goBack();
                    model.openGallery();
                  },
                  leading: const Icon(Icons.photo),
                  title: const Text('Gallery'),
                ),
                ListTile(
                  onTap: () {
                    model.goBack();
                    model.openCamera();
                  },
                  leading: const Icon(Icons.camera),
                  title: const Text('Camera'),
                ),
              ],
            ),
          );
        },
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.grey.shade400,
            ),
          ),
          child: model.image != null
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(model.image!.path))),
                  ),
                )
              : const Center(
                  child: Text(
                    'Add Photo +',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
