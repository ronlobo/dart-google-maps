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

abstract class _FusionTablesMouseEvent {
  String infoWindowHtml;
  LatLng latLng;
  Size pixelOffset;
  // TODO improve return type ( should be Map<String, FusionTablesCell> )
  js.Proxy row;
}

class FusionTablesMouseEvent extends jsw.MagicProxy implements _FusionTablesMouseEvent {
  static FusionTablesMouseEvent cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new FusionTablesMouseEvent.fromProxy(proxy));

  FusionTablesMouseEvent() : super();
  FusionTablesMouseEvent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override LatLng get latLng => LatLng.cast($unsafe.latLng);
  @override Size get pixelOffset => Size.cast($unsafe.pixelOffset);
}