//
//  smoothstep.swift
//  FirebladeMath
//
//  Created by Christian Treffs on 26.08.19.
//

#if canImport(simd)
import func simd.simd_smoothstep
#endif

/// Interpolates smoothly between 0 at edge0 and 1 at edge1
/// You can use a scalar value for edge0 and edge1 if you want to clamp all lanes at the same points.
public func smoothstep(_ edge0: Double, _ edge1: Double, _ x: Double) -> Double {
    #if USE_SIMD
    return simd.simd_smoothstep(edge0, edge1, x)
    #else
    fatalError("implementation missing \(#function) \(#file):\(#line)")
    #endif
}

/// Interpolates smoothly between 0 at edge0 and 1 at edge1
/// You can use a scalar value for edge0 and edge1 if you want to clamp all lanes at the same points.
public func smoothstep(_ edge0: Float, _ edge1: Float, _ x: Float) -> Float {
    #if USE_SIMD
    return simd.simd_smoothstep(edge0, edge1, x)
    #else
    fatalError("implementation missing \(#function) \(#file):\(#line)")
    #endif
}
