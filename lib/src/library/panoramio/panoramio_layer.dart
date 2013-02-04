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

part of google_maps_panoramio;

abstract class _PanoramioLayer {
  @jsw.dartified GMap getMap();
  @jsw.dartified String getTag();
  @jsw.dartified String getUserId();
  @jsw.dartified void setMap(GMap map);
  @jsw.dartified void setOptions(PanoramioLayerOptions options);
  @jsw.dartified void setTag(String tag);
  @jsw.dartified void setUserId(String userId);
}

class PanoramioLayer extends MVCObject implements _PanoramioLayer {
  static PanoramioLayer cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new PanoramioLayer.fromJsProxy(jsProxy));

  PanoramioLayer([PanoramioLayerOptions opts]) : super(maps.panoramio.PanoramioLayer, [opts]);
  PanoramioLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override GMap getMap() => GMap.cast($unsafe.getMap());

  GMap get map => getMap();
  String get tag => getTag();
  String get userId => getUserId();
  set map(GMap map) => setMap(map);
  set options(PanoramioLayerOptions options) => setOptions(options);
  set tag(String tag) => setTag(tag);
  set userId(String userId) => setUserId(userId);

  PanoramioLayerEvents get on => new PanoramioLayerEvents._(this);
}

class PanoramioLayerEvents {
  static final CLICK = "click";

  final PanoramioLayer _panoramioLayer;

  PanoramioLayerEvents._(this._panoramioLayer);

  PanoramioMouseEventListenerAdder get click => new PanoramioMouseEventListenerAdder(_panoramioLayer, CLICK);
}