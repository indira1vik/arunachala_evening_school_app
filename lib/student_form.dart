import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: StudentForm(),
    ),
  );
}

class StudentForm extends StatelessWidget{
  const StudentForm({super.key});
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student\'s Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: const StudentDetails(),
      )
    );
  }
}

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  final _formKey = GlobalKey<FormState>();
  String _selectedGender = 'Male'; // Default value for gender dropdown
  String _selectedMedium = 'Tamil'; // Default value for medium dropdown
  DateTime _selectedDate = DateTime.now(); // Default date

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'Student Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the student name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedGender,
              items: ['Male', 'Female'].map((gender) {
                return DropdownMenuItem(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
              decoration: const InputDecoration(labelText: 'Gender'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Align children to the start (left)
              children: <Widget>[
                Text(
                  'Date of Birth: ${_selectedDate.toLocal().toString().split(' ')[0]}',
                  style: const TextStyle(fontWeight: FontWeight.bold)
                ),
                ElevatedButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: const Text('Select Date'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedMedium,
              items: ['Tamil', 'English'].map((medium) {
                return DropdownMenuItem(
                  value: medium,
                  child: Text(medium),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedMedium = value!;
                });
              },
              decoration: const InputDecoration(labelText: 'Medium'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'School Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the school name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Address'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the address';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form is valid, perform submission or save data
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
}