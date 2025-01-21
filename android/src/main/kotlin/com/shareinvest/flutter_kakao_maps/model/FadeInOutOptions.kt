package com.shareinvest.flutter_kakao_maps.model

import org.json.JSONObject

data class FadeInOutOptions(
    var fadeInTime: Int,
    var fadeOutTime: Int,
    var retentionTime: Int,
)


fun JSONObject.toFadeInOutOptions(): FadeInOutOptions {
    return FadeInOutOptions(
        this.getInt("fadeInTime"),
        this.getInt("fadeOutTime"),
        this.getInt("retentionTime"),
    )
}