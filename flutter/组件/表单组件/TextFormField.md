1. TextFormField 表单输入控件，自带validator 验证

            TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                    if (value.isEmpty) {
                        return 'Please enter some text';
                    }
                    return null;
                },
            );

2. 给Form 一个key ,通过key 引用


        class MyCustomFormState extends State<MyCustomForm> {
        // Create a global key that uniquely identifies the Form widget
        // and allows validation of the form.
        //
        // Note: This is a GlobalKey<FormState>,
        // not a GlobalKey<MyCustomFormState>.
        final _formKey = GlobalKey<FormState>();

        @override
        Widget build(BuildContext context) {
            // Build a Form widget using the _formKey created above.
            return Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                TextFormField(
                    validator: (value) {
                    if (value.isEmpty) {
                        return 'Please enter some text';
                    }
                    return null;
                    },
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                    onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                        if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        Scaffold.of(实时)
                            .showSnackBar(SnackBar(content: Text('Processing Data')));
                        }
                    },
                    child: Text('Submit'),
                    ),
                ),
                ],
            ),
            );
        }
        }