//
// ContentView.swift
// ICS4U-Unit2-05-Swift
//
// Created by Marcus A. Mosley on 2021-06-01
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var avehicle: Vehicle = Vehicle("Grey", "T3CHN0", 4, 180)
    @State private var avehicle2: Vehicle = Vehicle("Royal Red", "G0FA5T", 2, 250)
    @State private var text: String = ""

    var body: some View {
        VStack {
            Button("Enter", action: {
                text += "Speed up by 60 on vehicle #1 and 80 on vehicle #2."
                avehicle.accelerate(60)
                avehicle2.accelerate(80)
                text += "\n\nThe current speed on bicycle #1 is: \(String(avehicle.getSpeed()))"
                text += "\nThe current speed on bicycle #2 is \(String(avehicle2.getSpeed()))"

                text += "\n\nApply the brake on vehicle #1 with value 13."
                avehicle.applyBrake(2)
                text += "\n\nThe new speed on bicycle #1 is: \(String(avehicle.getSpeed()))"
                text += "\nThe new speed on bicycle #2 is \(String(avehicle2.getSpeed()))"
            })
            .padding()
            Text("\(text)")
        }
    }
}

class Vehicle {
    var colour: String
    var plateNo: String
    var doorNo: Int
    var maxSpeed: Int
    var speed: Int
    init(_ startColour: String, _ startPlateNo: String, _ startDoorNo: Int, _ startMaxSpeed: Int) {
        colour = startColour
        plateNo = startPlateNo
        doorNo = startDoorNo
        maxSpeed = startMaxSpeed
        speed = 0
    }

    // Getters

    func getColour() -> String {
        return self.colour
    }

    func getPlateNo() -> String {
        return self.plateNo
    }

    func getDoorNo() -> Int {
        return self.doorNo
    }

    func getMaxSpeed() -> Int {
        return self.maxSpeed
    }

    func getSpeed() -> Int {
        return self.speed
    }

    // Setters

    func setPlateNo(_ newPlateNo: String) {
        self.plateNo = newPlateNo
    }

    func setColour(_ newColour: String) {
        self.colour = newColour
    }

    // Methods

    // Increases Current Speed
    func accelerate(_ increment: Int) {
        self.speed += increment
    }

    // Decreases Current Speed
    func applyBrake(_ decrement: Int) {
        self.speed -= decrement
    }

    // Outputs the array
    func printVehicleInfo() -> String {
        var text: String = ""

        text += "\nLicense Plate No.: \(plateNo)"
        text += "\nColour: \(colour)"
        text += "\nNo. of Doors: \(String(doorNo))"
        text += "\nMax. Speed: \(String(maxSpeed))"
        text += "\nCurrent Speed: \(String(speed))"

        return text
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
