package com.shareinvest.flutter_kakao_maps.model

import com.shareinvest.flutter_kakao_maps.enum.KakaoMapAlignment
import org.json.JSONObject

data class KakaoMapPosition(
    var alignment: KakaoMapAlignment,
    var x: Float,
    var y: Float,
)

fun JSONObject.toKakaoMapPosition(): KakaoMapPosition {
    return KakaoMapPosition(
        KakaoMapAlignment.fromValue(this.getString("alignment")),
        this.getDouble("x").toFloat(),
        this.getDouble("y").toFloat(),
    )
}