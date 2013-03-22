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

abstract class _DemographicsLayer {
  @dartified GMap getMap();
  @dartified DemographicsQuery getQuery();
  @dartified List<DemographicsStyle> getStyle();
  @dartified void setMap(GMap map);
  @dartified void setOptions(DemographicsLayerOptions options);
  @dartified void setQuery(DemographicsQuery query);
  @dartified void setStyle(List<DemographicsStyle> style);
}

class DemographicsLayer extends jsw.MagicProxy implements _DemographicsLayer {
  static DemographicsLayer cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DemographicsLayer.fromProxy(proxy));

  DemographicsLayer([DemographicsLayerOptions opts]) : super(maps.visualization.DemographicsLayer, [opts]);
  DemographicsLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override GMap getMap() => GMap.cast($unsafe.getMap());
  @override DemographicsQuery getQuery() => DemographicsQuery.cast($unsafe.getQuery());
  @override List<DemographicsStyle> getStyle() => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.getStyle(), DemographicsStyle.cast);
  @override void setStyle(List<DemographicsStyle> style) { $unsafe.style = jsifyList(style); }

  GMap get map => getMap();
  DemographicsQuery get query => getQuery();
  List<DemographicsStyle> get styles => getStyle();
  set map(GMap map) => setMap(map);
  set options(DemographicsLayerOptions options) => setOptions(options);
  set query(DemographicsQuery query) => setQuery(query);
  set style(List<DemographicsStyle> style) => setStyle(style);
}
