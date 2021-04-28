//
//  SponsorBuilder.swift
//  SponsorModule
//
//  Created by Tibor Bodecs on 2020. 08. 23..
//

import FeatherCore

@_cdecl("createSponsorModule")
public func createSponsorModule() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(SponsorBuilder()).toOpaque()
}

public final class SponsorBuilder: FeatherModuleBuilder {

    public override func build() -> FeatherModule {
        SponsorModule()
    }
}
