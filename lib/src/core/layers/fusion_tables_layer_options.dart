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

abstract class _FusionTablesLayerOptions {
  bool clickable;
  FusionTablesHeatmap heatmap;
  GMap map;
  FusionTablesQuery query;
  List<FusionTablesStyle> styles;
  bool suppressInfoWindows;
}

class FusionTablesLayerOptions extends jsw.MagicProxy implements _FusionTablesLayerOptions {
  static FusionTablesLayerOptions cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new FusionTablesLayerOptions.fromProxy(proxy));

  FusionTablesLayerOptions() : super();
  FusionTablesLayerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override FusionTablesHeatmap get heatmap => FusionTablesHeatmap.cast($unsafe.heatmap);
  @override GMap get map => GMap.cast($unsafe.map);
  @override FusionTablesQuery get query => FusionTablesQuery.cast($unsafe.query);
  @override List<FusionTablesStyle> get styles => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.styles, FusionTablesStyle.cast);
}