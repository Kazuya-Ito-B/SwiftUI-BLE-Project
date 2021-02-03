//
//  Peripheral.swift
//  SwiftUI-BLE-Project
//
//  Created by kazuya ito on 2021/02/02.
//

import Foundation
import CoreBluetooth

class Peripheral: Identifiable {
    var id: UUID
    var peripheral: CBPeripheralProtocol
    var name: String
    var advertisementData: [String : Any]
    var rssi: Int
    var discoverCount: Int
    
    init(_peripheral: CBPeripheralProtocol, _advData: [String : Any], _rssi: NSNumber, _discoverCount: Int) {
        id = UUID()
        peripheral = _peripheral
        name = _peripheral.name ?? "NoName"
        advertisementData = _advData
        rssi = _rssi.intValue
        discoverCount = _discoverCount + 1
    }
}
