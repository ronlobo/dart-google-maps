// Copyright (c) 2013, Alexandre Ardhuin
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

abstract class _DemographicsLayerOptions {
  bool clickable;
  GMap map;
  DemographicsQuery query;
  // TODO check type
  List<DemographicsStyle> style;
  // TODO bad type in doc
  bool suppressInfoWindows;
}

class DemographicsLayerOptions extends jsw.MagicProxy implements _DemographicsLayerOptions {
  static DemographicsLayerOptions cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DemographicsLayerOptions.fromProxy(proxy));

  DemographicsLayerOptions() : super();
  DemographicsLayerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override GMap get map => GMap.cast($unsafe.map);
  @override DemographicsQuery get query => DemographicsQuery.cast($unsafe.query);
  @override List<DemographicsStyle> get style => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.style, DemographicsStyle.cast);
  @override set style(List<DemographicsStyle> style) => $unsafe.style = jsifyList(style);
}
