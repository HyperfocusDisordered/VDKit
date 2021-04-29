//
//  File.swift
//  
//
//  Created by Данил Войдилов on 29.04.2021.
//

import Foundation
import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public struct OptionalView<Wrapped: View>: View {
	public var wrapped: Wrapped?
	
	public var body: some View { wrapped }
	
	public init(_ wrapped: Wrapped?) {
		self.wrapped = wrapped
	}
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension OptionalView: IterableView where Wrapped: IterableView {
	
	public var count: Int {
		wrapped?.count ?? 0
	}
	
	public func iterate<V: IterableViewVisitor, R: RangeExpression>(with visitor: V, in range: R) where R.Bound == Int {
		wrapped?.iterate(with: visitor, in: range)
	}
	
	public func iterate<V: IterableViewVisitor>(with visitor: V) {
		wrapped?.iterate(with: visitor)
	}
}
