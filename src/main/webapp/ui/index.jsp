<!DOCTYPE html>
<html>
<head>
    <title>Map</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="/resources/ui/index/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="/resources/ui/index/stomp.min.js"></script>
    <script src="/resources/ui/index/script.js"></script>
</head>
<body ng-app="map" ng-controller="AppController">
    <div class="page">
        <div class="header">
            <div class="options">
                <div class="option">
                    <label for="pickKey">Pick key:</label>
                    <select id="pickKey" ng-model="userdata" ng-options="key.key for key in keys" ng-change="getNewMarkers();"></select>
                </div>
                <div class="option" ng-if="userdata !== undefined">
                    <label for="maxmarkers">Display</label>
                    <input type="range" class="markeramount" list="tickmarks" id="maxmarkers" min="5" max="{{max_marker_amount}}" step="5"
                           ng-model="markeramount" ng-change="onMarkerAmountChange(markeramount)">
                    <!-- TODO: DB table settings with max for each user, and get max from there and stuff-->
                    <datalist id="tickmarks">
                        <option value="{{marker_amount_ticks[0]}}">
                        <option value="{{marker_amount_ticks[1]}}">
                        <option value="{{marker_amount_ticks[2]}}">
                        <option value="{{marker_amount_ticks[3]}}">
                        <option value="{{marker_amount_ticks[4]}}">
                    </datalist>
                    <span class="markeramountnumber">{{markeramount}}</span>
                </div>
            </div>
            <div class="login-username">{{username}}</div>
        </div>
        <div class="map" id="map"></div>
    </div>
</body>
</html>