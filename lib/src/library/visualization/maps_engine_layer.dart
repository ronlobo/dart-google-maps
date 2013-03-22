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

abstract class _MapsEngineLayer {
  @dartified String getLayerId();
  @dartified String getLayerKey();
  @dartified GMap getMap();
  @dartified String getMapId();
  @dartified MapsEngineLayerProperties getProperties();
  @dartified MapsEngineStatus getStatus();
  @dartified setLayerId(String layerId);
  @dartified setLayerKey(String layerKey);
  @dartified setMap(GMap map);
  @dartified setMapId(String mapId);
  @dartified setOptions(MapsEngineLayerOptions options);
}

class MapsEngineLayer extends MVCObject implements _MapsEngineLayer {
  static MapsEngineLayer cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new MapsEngineLayer.fromProxy(proxy));

  MapsEngineLayer([MapsEngineLayerOptions opts]) : super(maps.visualization.MapsEngineLayer, [opts]);
  MapsEngineLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override GMap getMap() => GMap.cast($unsafe.getMap());
  @override MapsEngineLayerProperties getProperties() => MapsEngineLayerProperties.cast($unsafe.getProperties());
  @override MapsEngineStatus getStatus() => MapsEngineStatus.find($unsafe.getStatus());

  String get layerId => getLayerId();
  String get layerKey => getLayerKey();
  GMap get map => getMap();
  String get mapId => getMapId();
  MapsEngineLayerProperties get properties => getProperties();
  MapsEngineStatus get status => getStatus();
  set layerId(String layerId) => setLayerId(layerId);
  set layerKey(String layerKey) => setLayerKey(layerKey);
  set map(GMap map) => setMap(map);
  set mapId(String mapId) => setMapId(mapId);
  set options(MapsEngineLayerOptions options) => setOptions(options);

  MapsEngineLayerEvents get on => new MapsEngineLayerEvents._(this);
}

class MapsEngineLayerEvents {
  static final CLICK = "click";
  static final PROPERTIES_CHANGED = "properties_changed";
  static final STATUS_CHANGED = "status_changed";

  final MapsEngineLayer _mapsEngineLayer;

  MapsEngineLayerEvents._(this._mapsEngineLayer);

  MapsEngineMouseEventListenerAdder get placeChanged => new MapsEngineMouseEventListenerAdder(_mapsEngineLayer, CLICK);
  NoArgsEventListenerAdder get propertiesChanged => new NoArgsEventListenerAdder(_mapsEngineLayer, PROPERTIES_CHANGED);
  NoArgsEventListenerAdder get statusChanged => new NoArgsEventListenerAdder(_mapsEngineLayer, STATUS_CHANGED);
}

class MapsEngineMouseEventListenerAdder extends EventListenerAdder {
  MapsEngineMouseEventListenerAdder(MapsEngineLayer _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(MapsEngineMouseEvent e)) { super.add((e) => handler(MapsEngineMouseEvent.cast(e))); }
  MapsEventListenerRegistration addTemporary(void handler(MapsEngineMouseEvent e)) => super.addTemporary((e) => handler(MapsEngineMouseEvent.cast(e)));
}