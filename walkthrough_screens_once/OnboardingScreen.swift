//
//  Onboarding_screen.swift
//  walkthrough_screens_once
//
//  Created by nuclei on 08/09/24.
//

import SwiftUI

struct OnboardingScreen: View {
    
    var image: String
    var title: String
    
    @ObservedObject var viewModel: OnboardingScreenViewModel
    
    var body: some View {
        VStack {
            HStack {
                if viewModel.currentPage == 1 {
                    Text("Hello, Foodies")
                        .font(.title2)
                        .fontWeight(.semibold)
                } else {
                    Button(action: {
                        viewModel.currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                    })
                }
                Spacer()
                
                Button(action: {
                    viewModel.currentPage = 4
                },
                       label: {
                    Text("Skip")
                        .kerning(1.3)
                        .fontWeight(.medium)
                })
            }.padding()
                .foregroundStyle(Color(.black))
            
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.horizontal, 16)
                .frame(height: 350)
                .clipShape(Circle())
            
            Spacer(minLength: 5)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top)
                .padding(.bottom, 5)
                .foregroundStyle(Color(.theme))
            
            Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.")
                .font(.body)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing])
            
            Spacer()
            
            HStack {
                if viewModel.currentPage == 1 {
                    Color(.theme).frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                } else if viewModel.currentPage == 2 {
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color(.theme).frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                } else if viewModel.currentPage == 3 {
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color(.theme).frame(height: 8/UIScreen.main.scale)
                }
                
            }
            .padding()
            
            Button(action: {
                if viewModel.currentPage <= viewModel.totalPage {
                    viewModel.currentPage += 1
                } else {
                    viewModel.currentPage = 1
                }
            }
                   , label: {
                if viewModel.currentPage == 3 {
                    Text("Get started")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundStyle(Color(.white))
                        .background(Color(.theme))
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.horizontal, 16)
                } else {
                    Text("Next")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundStyle(Color(.white))
                        .background(Color(.theme))
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.horizontal, 16)
                }
            })
        }
    }
}

#Preview {
    OnboardingScreen(image: "food", title: "Order food", viewModel: OnboardingScreenViewModel())
}
