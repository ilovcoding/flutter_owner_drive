import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/i18n/internationalization_model.dart';
import 'package:flutter_owner_drive/i18n/langue.dart';

class LangueProvider with ChangeNotifier, DiagnosticableTreeMixin {
  InternationalizationModel _local = InternationalizationModel();
  Langue _langue = Langue.zhCN;

  InternationalizationModel get local => _local;
  Langue get langue => _langue;

  void loadLangue(Langue langue) async {
    _local = await loadLangueData(langue.value);
    _langue = langue;
    notifyListeners();
  }

  /// 单纯测试
  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('langue', _local.hashCode));
  }
}
