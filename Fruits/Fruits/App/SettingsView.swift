//
//  SettingsView.swift
//  Fruits
//
//  Created by Beni Ibeh on 31/05/2023.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment (\.presentationMode) var presentationMode
    @AppStorage ("isOnboarding") var isOnbaording:Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20){
                    //: SECTION 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical,4)
                        HStack (alignment: .center,spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            
                            Text("Most  fruits are healthy so you should eat as many ad you can have and jsut got woth the flow")
                                .font(.footnote)
                        }
                    }
                    //:SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish you can restart the application by toggling the control below")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnbaording) {
                            if isOnbaording {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)                            }
                        }.padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                            )
                    }//:GROUP BOX
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                            SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "Designer",content: "Beni Ibeh")
                            SettingsRowView(name: "Compatibility", content: "IOS 14")
                            SettingsRowView(name: "Website",linkLabel: "Swift UI Masterclass",linkDestination:"swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter",linkLabel: "@beni",linkDestination:"swiftuimasterclass.com")
                            SettingsRowView(name: "Version", content: "1.1.0")
                    }//:GROUP BOX
                }//: VSTACK
                .navigationTitle("Settings")
                .padding()
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                )
            }// SCROLL
        }//:NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
