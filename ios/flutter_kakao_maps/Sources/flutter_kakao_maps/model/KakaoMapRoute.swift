import KakaoMapsSDK

extension NSDictionary {
    func toRouteSegment () -> RouteSegment {
let points = self["points"] as? [MapPoint] ?? []
let styleIndex = self["styleIndex"] as? Int ?? 0

        return init(points: points, styleIndex:  UInt(styleIndex))
    }
}