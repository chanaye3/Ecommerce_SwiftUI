//
//  DetailExample.swift
//  KyarLay
//
//  Created by Mg Chan on 5/24/24.
//

import Foundation
import SwiftUI

struct DetailExample: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail")
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Detail View")
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Custom Back")
                        }
                    }
                }
            }
        }
    }
}
////////////////////////////////////////////////


struct example2: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "star.fill") // Replace with your image
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Custom Title")
                            .font(.headline)
                    }
                }
            }
        }
    }
}

struct example2DetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "star.fill") // Replace with your image
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Detail Title")
                        .font(.headline)
                }
            }
        }
    }
}

struct example2_Previews: PreviewProvider {
    static var previews: some View {
        example2()
    }
}

