import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerWidget extends StatefulWidget {
  @override
  _QRScannerWidgetState createState() => _QRScannerWidgetState();
}

class _QRScannerWidgetState extends State<QRScannerWidget> {
  late QRViewController _controller;
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  bool _isControllerInitialized = false; // Nuevo campo agregado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QRView(
              key: _qrKey,
              onQRViewCreated: (controller) {
                setState(() {
                  _controller = controller;
                  _isControllerInitialized = true; // Marcar como inicializado
                });
                _controller.scannedDataStream.listen((scanData) {
                  setState(() {
                    // Aquí puedes manejar los datos escaneados
                    print(scanData.code);
                  });
                });
              },
            ),
            // Puedes personalizar la interfaz como desees
            _isControllerInitialized // Verificar si el controlador está inicializado
                ? ElevatedButton(
                    onPressed: () {
                      _controller.toggleFlash();
                    },
                    child: Text('Toggle Flash'),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
