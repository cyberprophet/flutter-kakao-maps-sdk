package com.shareinvest.flutter_kakao_maps.model

import com.kakao.vectormap.PoiScale
import org.json.JSONObject

data class PoiOptions(
    var clickable: Boolean,
    var enabled: Boolean,
    var scale: PoiScale,
)

fun JSONObject.toPoiOptions(): PoiOptions {
    return PoiOptions(
        this.getBoolean("clickable"),
        this.getBoolean("enabled"),
        PoiScale.getEnum(this.getInt("scale"))
    )
}