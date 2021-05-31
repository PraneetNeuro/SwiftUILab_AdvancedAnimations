//
//  MainNavigationView.swift
//  SwiftUILab_AA
//
//  Created by Mihaela Mihaljevic Jakic on 31.05.2021..
//

import SwiftUI

struct MainNavigationView: View {

  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Part 1: Path Animations")) {
          NavigationLink(destination: Example1(), label: {
            Text("Example 1 (sides: Double)")
          })
          
          NavigationLink(destination: Example2(), label: {
            Text("Example 2 (sides: Int)")
          })
          
          NavigationLink(destination: Example3(), label: {
            Text("Example 3 (sides & scale)")
          })
          
          NavigationLink(destination: Example4(), label: {
            Text("Example 4 (vertex to vertex)")
          })
          
          NavigationLink(destination: Example5(), label: {
            Text("Example 5 (clock)")
          })
          
          NavigationLink(destination: Example6(), label: {
            Text("Example 6 (metal)")
          })
        }
        
        Section(header: Text("Part 2: Geometry Effect")) {
          NavigationLink(destination: Example7(), label: {
            Text("Example 7 (skew)")
          })
          
          NavigationLink(destination: Example8(), label: {
            Text("Example 8 (rotating card)")
          })
          
          NavigationLink(destination: Example9(), label: {
            Text("Example 9 (follow path)")
          })
        }
        
        Section(header: Text("Part 3: Animatable Modifier")) {
          NavigationLink(destination: Example10(), label: {
            Text("Example 10 (progress indicator)")
          })
          
          NavigationLink(destination: Example11(), label: {
            Text("Example 11 (gradient)")
          })
          
          NavigationLink(destination: Example12(), label: {
            Text("Example 12 (wave text)")
          })
          
          NavigationLink(destination: Example13(), label: {
            Text("Example 13 (counter)")
          })
          
          NavigationLink(destination: Example14(), label: {
            Text("Example 14 (animatable text color)")
          })
          
        }
        
      }.modify {
        #if os(iOS)
        $0.navigationBarTitle("SwiftUI Lab Mobile")
        #else
        $0.navigationTitle("SwiftUI Lab Desktop")
        #endif
      }
    }
  }
}

struct MainNavigationView_Previews: PreviewProvider {
  static var previews: some View {
    MainNavigationView()
  }
}