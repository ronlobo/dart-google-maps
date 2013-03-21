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

GEvent get event => new GEvent();

abstract class _GEvent {
  MapsEventListener addDomListener(dynamic instance, String eventName, Function handler, [bool capture]);
  MapsEventListener addDomListenerOnce(dynamic instance, String eventName, Function handler, [bool capture]);
  MapsEventListener addListener(dynamic instance, String eventName, Function handler);
  MapsEventListener addListenerOnce(dynamic instance, String eventName, Function handler);
  void clearInstanceListeners(dynamic instance);
  void clearListeners(dynamic instance, String eventName);
  void removeListener(MapsEventListener listener);
  void trigger(dynamic instance, String eventName, List<dynamic> args);
}

class GEvent extends jsw.MagicProxy implements _GEvent {
  static GEvent cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new GEvent.fromProxy(proxy));

  GEvent() : super.fromProxy(maps.event);
  GEvent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override MapsEventListener addDomListener(dynamic instance, String eventName, Function handler, [bool capture]) {
    final callback = new js.Callback.many(handler);
    final instanciator = (js.Proxy proxy) => new MapsEventListener.fromProxy(proxy, () => callback.dispose());
    return jsw.mapNotNull($unsafe.addDomListener(instance, eventName, callback, capture), instanciator);
  }
  @override MapsEventListener addDomListenerOnce(dynamic instance, String eventName, Function handler, [bool capture]) {
    final callback = new js.Callback.once(handler);
    final instanciator = (js.Proxy proxy) => new MapsEventListener.fromProxy(proxy);
    return jsw.mapNotNull($unsafe.addDomListenerOnce(instance, eventName, callback, capture), instanciator);
  }
  @override MapsEventListener addListener(dynamic instance, String eventName, Function handler) {
    final callback = new js.Callback.many(handler);
    final instanciator = (js.Proxy proxy) => new MapsEventListener.fromProxy(proxy, () => callback.dispose());
    return jsw.mapNotNull($unsafe.addListener(instance, eventName, callback), instanciator);
  }
  @override MapsEventListener addListenerOnce(dynamic instance, String eventName, Function handler) {
    final callback = new js.Callback.once(handler);
    final instanciator = (js.Proxy proxy) => new MapsEventListener.fromProxy(proxy);
    return jsw.mapNotNull($unsafe.addListenerOnce(instance, eventName, callback), instanciator);
  }
  @override void removeListener(MapsEventListener listener) {
    if (listener.onRelease != null) {
      listener.onRelease();
    }
    $unsafe.removeListener(listener);
  }
  @override void trigger(dynamic instance, String eventName, List<dynamic> args) {
    final parameters = new List<dynamic>();
    parameters.add(instance);
    parameters.add(eventName);
    parameters.addAll(args);
    $unsafe.trigger(parameters);
  }
}