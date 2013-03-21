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

abstract class _DirectionsLeg {
  @dartified Time arrival_time;
  @dartified Time departure_time;
  Distance distance;
  GDuration duration;
  @dartified String end_address;
  @dartified LatLng end_location;
  @dartified String start_address;
  @dartified LatLng start_location;
  List<DirectionsStep> steps;
  @dartified List<LatLng> via_waypoints;
}

class DirectionsLeg extends jsw.MagicProxy implements _DirectionsLeg {
  static DirectionsLeg cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DirectionsLeg.fromProxy(proxy));

  DirectionsLeg() : super();
  DirectionsLeg.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override Time get arrival_time => Time.cast($unsafe.arrival_time);
  @override Time get departure_time => Time.cast($unsafe.departure_time);
  @override Distance get distance => Distance.cast($unsafe.distance);
  @override GDuration get duration => GDuration.cast($unsafe.duration);
  @override LatLng get end_location => LatLng.cast($unsafe.end_location);
  @override LatLng get start_location => LatLng.cast($unsafe.start_location);
  @override List<DirectionsStep> get steps => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.steps, DirectionsStep.cast);
  @override set steps(List<DirectionsStep> steps) => $unsafe.steps = jsifyList(steps);
  @override List<LatLng> get via_waypoints => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.via_waypoints, LatLng.cast);
  @override set via_waypoints(List<LatLng> via_waypoints) => $unsafe.via_waypoints = jsifyList(via_waypoints);

  Time get arrivalTime => arrival_time;
  set arrivalTime(Time arrivalTime) => this.arrival_time = arrivalTime;
  Time get departureTime => departure_time;
  set departureTime(Time departureTime) => this.departure_time = departureTime;
  String get endAddress => end_address;
  set endAddress(String endAddress) => this.end_address = endAddress;
  LatLng get endLocation => end_location;
  set endLocation(LatLng endLocation) => this.end_location = endLocation;
  String get startAddress => start_address;
  set startAddress(String startAddress) => this.start_address = startAddress;
  LatLng get startLocation => start_location;
  set startLocation(LatLng startLocation) => this.start_location = startLocation;
  List<LatLng> get viaWaypoints => via_waypoints;
  @override set viaWaypoints(List<LatLng> viaWaypoints) => this.via_waypoints = viaWaypoints;
}