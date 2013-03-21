// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

abstract class _MVCObject {
  MapsEventListener addListener(String eventName, Function handler);
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]);
  void changed(String key);
  dynamic get(String key);
  void notify(String key);
  void set(String key, dynamic value);
  void setValues(Map<String, dynamic> values);
  void unbind(String key);
  void unbindAll();
}

class MVCObject extends jsw.MagicProxy implements _MVCObject {
  static MVCObject cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new MVCObject.fromProxy(proxy));

  MVCObject([js.FunctionProxy function, List args]) : super(function != null ? function : maps.MVCObject, args);
  MVCObject.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override MapsEventListener addListener(String eventName, Function handler) {
    final callback = new js.Callback.many(handler);
    final instanciator = (js.Proxy proxy) => new MapsEventListener.fromProxy(proxy, () => callback.dispose());
    return $unsafe.addListener(eventName, callback).map(instanciator);
  }
  @override void setValues(Map<String, dynamic> values) {
    final valuesJs = new jsw.JsObjectToMapAdapter.fromProxy(js.map({}));
    values.forEach((key, value) {
      valuesJs[key] = value;
    });
    $unsafe.setValues(valuesJs);
  }
}