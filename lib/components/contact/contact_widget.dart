import 'package:flutter/material.dart';

import '../../core/dimens.dart';

class ContactWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(
          MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal:
            MediaQuery.sizeOf(context).width * 0.2,
          ),
          child: ContactForm(
            formKey: _formKey,
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Subject'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a subject';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Message'),
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a message';
              }
              return null;
            },
          ),
          const SizedBox(
            height: Dimens.size16,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process the form data
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Form submitted successfully"),
                  ),
                );
              }
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
