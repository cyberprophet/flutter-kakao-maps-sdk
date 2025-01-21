package com.shareinvest.flutter_kakao_maps.util

import android.content.res.Resources

val Int.px: Int
    get() =
        (this * Resources.getSystem().displayMetrics.density).toInt()


val Double.px: Double
    get() =
        (this * Resources.getSystem().displayMetrics.density)

val Float.px: Float
    get() =
        (this * Resources.getSystem().displayMetrics.density)


val Int.dp: Int
    get() =
        (this / Resources.getSystem().displayMetrics.density).toInt()

val Double.dp: Double
    get() =
        (this / Resources.getSystem().displayMetrics.density)

val Float.dp: Float
    get() =
        (this / Resources.getSystem().displayMetrics.density)
