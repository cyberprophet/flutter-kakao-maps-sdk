package com.shareinvest.flutter_kakao_maps.model

import com.kakao.vectormap.LatLng
import org.json.JSONObject

data class CameraPosition(
    var height: Double,
    var position: LatLng,
    var rotationAngle: Double,
    var tiltAngle: Double,
    var zoomLevel: Int,
)

fun JSONObject.toCameraPosition(): CameraPosition {
    val position = this.getJSONObject("position")

    return CameraPosition(
        height = this.getDouble("height"),
        rotationAngle = this.getDouble("rotationAngle"),
        tiltAngle = this.getDouble("tiltAngle"),
        zoomLevel = this.getInt("zoomLevel"),
        position = LatLng.from(
            position.getDouble("latitude"),
            position.getDouble("longitude")
        ),
    )
}