import 'package:authenticator_local/views/secret.view.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class FrontPart extends StatefulWidget {
  @override
  _FrontPartState createState() => _FrontPartState();
}

class _FrontPartState extends State<FrontPart> {
  @override
  void initState() {
    super.initState();
    authenticate();
  }

  final LocalAuthentication _localAuthentication = LocalAuthentication();

  authenticate() async {
    if (await _isBiometricAvailable()) {
      await _getListOfBiometricTypes();
      await _authenticateUser();
    }
  }

  Future<bool> _isBiometricAvailable() async {
    try {
      bool isAvailable = await _localAuthentication.canCheckBiometrics;
      return isAvailable;
    } catch (e) {
      return false;
    }
  }

  Future<void> _getListOfBiometricTypes() async {
    List<BiometricType> listOfBiometrics =
        await _localAuthentication.getAvailableBiometrics();
  }

  Future<void> _authenticateUser() async {
    bool _isAuthenticated =
        await _localAuthentication.authenticateWithBiometrics(
            localizedReason: 'Please check your biometric',
            useErrorDialogs: true,
            stickyAuth: false);
    if (_isAuthenticated) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RestrictedArea()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 10,
      child: Text(
        'Please check your ID',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
