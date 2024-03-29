import SwiftUI

struct ContentView: View {
    @ObservedObject var bleManager = BLEManager()
    var body: some View {
        Spacer()
        Text("Bluetooth Devices")
            .font(.largeTitle)
            .frame(maxWidth: .infinity, alignment: .center)
        List(bleManager.peripherals) { peripheral in
            HStack {
                Text(peripheral.name)
                Spacer()
                Text(String(peripheral.rssi))
            }
        }.frame(height: 300)
        
        Spacer()
        
        Text("STATUS")
            .font(.headline)
        
        if bleManager.isSwitchedOn {
            Text("Bluetooth is switched on")
                .foregroundColor(.green)
        }
        else {
            Text("Bluetooth is NOT switched on")
                .foregroundColor(.red)
        }
        
        Spacer()
        
        HStack {
            VStack (spacing: 10) {
                Button(action: {
                    self.bleManager.startScanning()
                }) {
                    Text("Start Scanning")
                }
                
            }.padding()
            
            Spacer()
            
            VStack (spacing: 10) {
                Button(action: {
                    self.bleManager.stopScanning()
                }) {
                    Text("Stop Scanning")
                }
            }.padding()
        }
        Spacer()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
