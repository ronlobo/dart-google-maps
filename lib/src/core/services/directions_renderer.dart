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

abstract class _DirectionsRenderer {
  @dartified DirectionsResult getDirections();
  @dartified GMap getMap();
  @dartified html.Node getPanel();
  @dartified num getRouteIndex();
  @dartified void setDirections(DirectionsResult direction);
  @dartified void setMap(GMap map);
  @dartified void setOptions(DirectionsRendererOptions options);
  @dartified void setPanel(html.Node panel);
  @dartified void setRouteIndex(num routeIndex);
}

class DirectionsRenderer extends MVCObject implements _DirectionsRenderer {
  static DirectionsRenderer cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DirectionsRenderer.fromProxy(proxy));

  DirectionsRenderer([DirectionsRendererOptions opts]) : super(maps.DirectionsRenderer, [opts]);
  DirectionsRenderer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override DirectionsResult getDirections() => DirectionsResult.cast($unsafe.getDirection());
  @override GMap getMap() => GMap.cast($unsafe.getMap());

  DirectionsResult get directions => getDirections();
  GMap get map => getMap();
  html.Node get panel => getPanel();
  num get routeIndex => getRouteIndex();
  set directions(DirectionsResult directions) => setDirections(directions);
  set map(GMap map) => setMap(map);
  set options(DirectionsRendererOptions options) => setOptions(options);
  set panel(html.Node panel) => setPanel(panel);
  set routeIndex(num routeIndex) => setRouteIndex(routeIndex);

  DirectionsRendererEvents get on => new DirectionsRendererEvents._(this);
}

class DirectionsRendererEvents {
  static final DIRECTIONS_CHANGED = "directions_changed";

  final DirectionsRenderer _directionsRenderer;

  DirectionsRendererEvents._(this._directionsRenderer);

  NoArgsEventListenerAdder get directionsChanged => new NoArgsEventListenerAdder(_directionsRenderer, DIRECTIONS_CHANGED);
}