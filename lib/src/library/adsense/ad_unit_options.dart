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

part of google_maps_adsense;

abstract class _AdUnitOptions {
  String backgroundColor;
  String borderColor;
  String channelNumber;
  AdFormat format;
  GMap map;
  ControlPosition position;
  String publisherId;
  String textColor;
  String titleColor;
  String urlColor;
}

class AdUnitOptions extends jsw.TypedProxy implements _AdUnitOptions {
  static AdUnitOptions cast(js.Proxy jsProxy) => jsw.transformIfNotNull(jsProxy, (jsProxy) => new AdUnitOptions.fromJsProxy(jsProxy));

  AdUnitOptions() : super();
  AdUnitOptions.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  @override AdFormat get format => AdFormat.find($unsafe.format);
  @override GMap get map => GMap.cast($unsafe.map);
  @override ControlPosition get position => ControlPosition.find($unsafe.position);
}