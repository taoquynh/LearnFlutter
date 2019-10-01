import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

// Khởi tạo một enum để kiểm soát xem người dùng đang đăng nhập hay đăng kí
enum FormType {
  login,
  register
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";
  FormType _form = FormType.login; // mặc định là để đăng nhập, người dùng có thể chọn sang phần đăng kí

  _LoginPageState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  // chuyển qua lại giữa 2 form
  void _formChange () async {
    setState(() {
      if (_form == FormType.register) {
        _form = FormType.login;
      } else {
        _form = FormType.register;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildBar(context),
      body: new Center(
        child: Container(
        padding: EdgeInsets.only(top: 32, left: 32, right: 32),
        child: new Column(
          children: <Widget>[
            _buildTextFields(),
            Padding( 
              padding: EdgeInsets.only(top: 16),
            ),
            _buildButtons(),
          ],
        ),
      ),
      )
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text("Log In Demo"),
      centerTitle: true,
    );
  }

  Widget _buildTextFields() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextField(
              controller: _emailFilter,
              decoration: new InputDecoration(
                labelText: 'Email'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              controller: _passwordFilter,
              decoration: new InputDecoration(
                labelText: 'Mật khẩu'
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButtons() {
    if (_form == FormType.login) {
      return new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Đăng nhập'),
              onPressed: _loginPressed,
            ),
            new FlatButton(
              child: new Text('Không có tài khoản? Đăng kí tài khoản.'),
              onPressed: _formChange,
            ),
            new FlatButton(
              child: new Text('Quên mật khẩu'),
              onPressed: _passwordReset,
            )
          ],
        ),
      );
    } else {
      return new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Tạo tài khoản'),
              onPressed: _createAccountPressed,
            ),
            new FlatButton(
              child: new Text('Đã có tài khoản? Đăng nhập.'),
              onPressed: _formChange,
            )
          ],
        ),
      );
    }
  }

  // These functions can self contain any user auth logic required, they all have access to _email and _password

  void _loginPressed () {
    print('Người dùng muốn đăng nhập với $_email and $_password');
  }

  void _createAccountPressed () {
    print('Người dùng muốn tạo tài khoản với $_email and $_password');

  }

  void _passwordReset () {
    print("Người dùng muốn yêu cầu một mã xác nhận mật khẩu mới tới $_email");
  }


}