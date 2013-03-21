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

part of google_maps_visualization;

abstract class _HeatmapLayerOptions {
  MVCArray<LatLng> data;
  bool dissipating;
  List<String> gradient;
  GMap map;
  num maxIntensity;
  num opacity;
  num radius;
}

class HeatmapLayerOptions extends jsw.MagicProxy implements _HeatmapLayerOptions {
  static HeatmapLayerOptions cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new HeatmapLayerOptions.fromProxy(proxy));

  HeatmapLayerOptions() : super();
  HeatmapLayerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override MVCArray<LatLng> get data => MVCArray.castListOfSerializables($unsafe.data, LatLng.cast);
  @override List<String> get gradient => jsw.JsArrayToListAdapter.cast($unsafe.gradient);
  @override GMap get map => GMap.cast($unsafe.map);
}