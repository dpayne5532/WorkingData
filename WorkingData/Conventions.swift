//
//  ContentView.swift
//  WorkingData
//
//  Created by Dan Payne on 2/1/22.
//

import SwiftUI

struct Conventions: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Title",
                       subtitle: "Subtitletext",
                       desc: "Banner text.")
        }
        .font(.title)
    }
}











struct HeaderView: View {
    var title = "Title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    init(_ title: String, subtitle: String, desc: String,
         back: Color = Color.orange, textColor: Color = Color.black) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    
    
    }
    
    var body: some View {
        VStack(spacing: 15) {
            if title != "" {
                Text(title)
                    .font(.largeTitle)
            }
            Text(subtitle)
                .foregroundColor(.gray)
            
            DescView(desc, back: back, textColor: textColor)
            
        }
    }
}


struct DescView: View {
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    
    init(_ desc: String, back: Color = .orange, textColor: Color = .black) {
        self.desc = desc
        self.back = back
        self.textColor = textColor
        
    }
    
    var body: some View {
        
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(back)
            .foregroundColor(textColor)
        
    }
    
    
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Conventions()
    }
}
