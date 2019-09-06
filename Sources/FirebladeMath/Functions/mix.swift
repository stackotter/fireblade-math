//
//  mix.swift
//  FirebladeMath
//
//  Created by Christian Treffs on 26.08.19.
//

#if canImport(simd)
import func simd.simd_mix
#endif

/// Linearly interpolates between x and y, taking the value x when t=0 and y when t=1
public func mix(_ x: Double, _ y: Double, _ t: Double) -> Double {
    #if USE_SIMD
    return simd_mix(x, y, t)
    #else
    fatalError("implementation missing \(#function) \(#file):\(#line)")
    #endif
}

/// Linearly interpolates between x and y, taking the value x when t=0 and y when t=1
public func mix(_ x: Float, _ y: Float, _ t: Float) -> Float {
    #if USE_SIMD
    return simd_mix(x, y, t)
    #else
    fatalError("implementation missing \(#function) \(#file):\(#line)")
    #endif
}
