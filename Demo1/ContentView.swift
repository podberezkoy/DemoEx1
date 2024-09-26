//
//  ContentView.swift
//  Demo1
//
//  Created by user on 24.09.2024.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        NavigationView{
            NavigationLink(destination: SignUpView()) {
                Text("Sign up") // You can customize the label
                    .foregroundColor(.blue)
            }
        }}
            }


    
struct SignUpView: View {
    @StateObject var userViewModel = UserViewModel()
    @State var password: String=""
    @State var password2: String=""
    @State var isAgreedToTerms: Bool=false
    @State var checkFullName: Bool=false
    @State var checkPhoneNumber: Bool=false
    @State var checkEmail: Bool=false
    @State var checkPass1: Bool=false
    @State var checkPass2: Bool=false
    @State var checkPass3: Bool=false
    @State var checkTerms: Bool=false
    //@State var isNavigate: Bool=false
    var body: some View {
        VStack {
            NavigationLink(destination: SignInView(), isActive: $userViewModel.isNavigate) {}
            Group {
                Text("Create an account")
                    .fontWeight(.bold)
                    .font(.custom("Roboto",size: 24))
                    .padding(.top,20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Complete the sign up process to get started")
                    .foregroundColor(.gray)
                    .padding(.bottom, 0) // Added spacing below this text
                    .font(.custom("Roboto",size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                // Full Name Field
                Text("Full name")
                    .foregroundColor(.gray)
                    .font(.custom("Roboto",size: 14))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,14)
                    .padding(.bottom,10)
                    .alert(isPresented: $checkFullName) {
                        Alert(title: Text("Input Error"),
                              message: Text("Please fill in Full name field."),
                              dismissButton: .default(Text("OK")))
                    }
                
                TextField("Ivanov Ivan", text: $userViewModel.user.name)
                    .font(.custom("Roboto",size: 14))
                    .padding()
                    .background(Color.white) // Background color for better contrast
                    .cornerRadius(4)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 342, height: 44)
                
                // Phone Number Field
                Text("Phone number")
                    .font(.custom("Roboto",size: 14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,14)
                    .padding(.bottom,10)
                    .alert(isPresented: $checkPhoneNumber) {
                        Alert(title: Text("Input Error"),
                              message: Text("Please fill in Phone number field."),
                              dismissButton: .default(Text("OK")))
                    }
                TextField("+7(999)999-99-99", text: $userViewModel.user.phone)
                    .font(.custom("Roboto",size: 14))
                    .padding()
                    .background(Color.white) // Background color for better contrast
                    .cornerRadius(4)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 342, height: 44)
                
                // Email Address Field
                Text("Email address")
                    .font(.custom("Roboto",size: 14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,14)
                    .padding(.bottom,10)
                    .alert(isPresented: $checkEmail) {
                     Alert(title: Text("Input Error"),
                        message: Text("Please fill in Email field."),
                              dismissButton: .default(Text("OK")))
                    }
                TextField("*********@mail.com", text: $userViewModel.email)
                    .font(.custom("Roboto",size: 14))
                    .padding()
                    .background(Color.white) // Background color for better contrast
                    .cornerRadius(4)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 342, height: 44)
                
                // Password Field
                Text("Password")
                    .font(.custom("Roboto",size: 14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,14)
                    .padding(.bottom,10)
                    .alert(isPresented: $checkPass1) {
                        Alert(title: Text("Input Error"),
                              message: Text("Please fill in Password field."),
                              dismissButton: .default(Text("OK")))
                    }
                SecureField("*********", text: $userViewModel.password)
                    .font(.custom("Roboto",size: 14))
                    .padding()
                    .background(Color.white) // Background color for better contrast
                    .cornerRadius(4)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 342, height: 44)
                
                // Confirm Password Field
                Text("Confirm Password")
                    .font(.custom("Roboto",size: 14))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,14)
                    .padding(.bottom,10)
                    .alert(isPresented: $checkPass2) {
                        Alert(title: Text("Input Error"),
                              message: Text("Please fill in Confirm Password field."),
                              dismissButton: .default(Text("OK")))
                    }
                SecureField("*********", text: $userViewModel.confirmPassword)
                    .font(.custom("Roboto",size: 14))
                    .padding()
                    .background(Color.white) // Background color for better contrast
                    .cornerRadius(4)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 342, height: 44)
                    .alert(isPresented: $checkPass3) {
                    Alert(title: Text("Input Error"),
                          message: Text("Please checked Password and Confirm Password field."),
                          dismissButton: .default(Text("OK")))
                
            }.padding(.leading, 24)
                .padding(.trailing,24)
            }
            HStack {
                
                CheckBox(value: $isAgreedToTerms)
                    .padding(.leading,24)
                    .padding(.trailing,0)
                    .padding(.top,15)
                VStack{
                    HStack (spacing:0){
                        Text("By ticking this box, you agree to our ")// Allows the text to wrap onto multiple lines
                            .lineLimit(1)
                            .fixedSize(horizontal: true,vertical:false)
                            .font(.custom("Roboto",size: 12))
                        Text("Terms and") // Allows the text to wrap onto multiple lines
                            .lineLimit(1)
                            .fixedSize(horizontal: true,vertical:false)
                        //.fixedSize(horizontal: false, vertical: false)
                            .font(.custom("Roboto",size: 12))
                        .foregroundColor(.yellow)}
                    .padding(.top,18)
                    .frame(alignment: .center)
                    
                    Text("conditions and privacy policy.") // Allows the text to wrap onto multiple lines
                        .lineLimit(1)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.trailing,18)
                        .padding(.top,0)
                    //.fixedSize(horizontal: false, vertical: false)
                        .font(.custom("Roboto",size: 12))
                    .foregroundColor(.yellow)}
                // Allows vertical expansion
                .alert(isPresented: $checkTerms) {
                    Alert(title: Text("Input Error"),
                          message: Text("Please fill in CheckBox Terms."),
                          dismissButton: .default(Text("OK")))
                }
            }
            
            
            // Sign Up Button
            Button(action: {
                if userViewModel.user.name.isEmpty {
                    checkFullName = true
                }
                else
                if userViewModel.user.phone.isEmpty {
                    checkPhoneNumber = true
                }
                else
                if userViewModel.email.isEmpty {
                    checkEmail = true
                }
                else
                if userViewModel.password.isEmpty {
                    checkPass1 = true
                }
                else
                if userViewModel.confirmPassword.isEmpty {
                    checkPass2 = true
                }
                else
                if userViewModel.password != userViewModel.confirmPassword {
                    checkPass3 = true
                }
                else
                if isAgreedToTerms==false {
                    checkTerms = true
                }
                else {
                    userViewModel.signUp()
                }
                NavigationLink(destination: SignInView(), isActive: $userViewModel.isNavigate) {}
              
                
            }, label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)                    .padding()
            })
            .background(Color.gray)
            .cornerRadius(4)
            .padding(.leading,23)
            .padding(.trailing,23)
            .padding(.top,15)
            .padding(.bottom,15)
            .font(.custom("Roboto",size: 16))
            
            HStack{
                Text("Already have an account?")
                    .font(.custom("Roboto",size: 14))
                    .padding(.top,0)
                NavigationLink(
                    destination: SignInView(),
                    label: {
                        Text("Sign In")
                    }).foregroundColor(.blue)
                        .font(.custom("Roboto",size: 14))
                }
            Text("or sign in using")
                .font(.custom("Roboto",size: 14))
                .padding(.top,18)
            Image("google")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(10)

            .navigationBarHidden(true)
                    .padding(.top,0)
            }.padding(.leading,23)
            .padding(.trailing,23)
        }
    }
        
    
struct SignInView: View {
    @StateObject var userViewModel = UserViewModel()
    @State var email_address: String=""
    @State var password: String=""
    @State var isRememberPassword: Bool=false
    @State var checkEmail: Bool=false
    @State var checkPass1: Bool=false
    var body: some View{
        NavigationLink(destination: HomeView(), isActive: $userViewModel.isNavigate) {}
        VStack{
                Text("Welcome Back")
                .fontWeight(.bold)
                .font(.custom("Roboto",size: 24))
                .padding(.top,20)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("Fill in your email and password to continue")
                .foregroundColor(.gray)
                .padding(.bottom, 0) // Added spacing below this text
                .font(.custom("Roboto",size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)
                Group {
                    // Email Address Field
                    Text("Email address")
                        .foregroundColor(.gray)
                        .font(.custom("Roboto",size: 14))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top,14)
                        .padding(.bottom,10)
                    
                    TextField("*********@mail.com", text: $userViewModel.email)
                        .font(.custom("Roboto",size: 14))
                        .padding()
                        .background(Color.white) // Background color for better contrast
                        .cornerRadius(4)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(width: 342, height: 44)
                    
                    // Password Field
                    Text("Password")
                        .foregroundColor(.gray)
                        .font(.custom("Roboto",size: 14))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top,14)
                        .padding(.bottom,10)
                    
                    SecureField("*********", text: $userViewModel.password)
                        .font(.custom("Roboto",size: 14))
                        .padding()
                        .background(Color.white) // Background color for better contrast
                        .cornerRadius(4)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1)) // Border with rounded corners
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(width: 342, height: 44)
                    
                    
                    
                
                    HStack {
                        CheckBox(value: $isRememberPassword).padding()
                        Text("Remember password")
                            .fixedSize(horizontal: false,vertical:false)
                            .font(.custom("Roboto",size: 12))
                            .padding(.top, 0)
                        NavigationLink(
                            destination: ForgotPasswordView(),
                            label: {
                                Text("Forgot Password?")
                            }).foregroundColor(.blue)
                                .font(.custom("Roboto",size: 12))
                    }
                    
                }
                // Sign In Button

                Button(action: {
                    if userViewModel.email.isEmpty {
                        checkEmail = true
                    }
                    else if userViewModel.password.isEmpty {
                        checkPass1 = true
                    }
                    else {
                        userViewModel.signIn()
                    }
                    
                }, label: {
                    Text("Log In")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)                    .padding()
                })
                .background(Color.gray)
                .cornerRadius(4)
                .padding(.top,15)
                .padding(.bottom,15)
                .font(.custom("Roboto",size: 16))
            
            .alert(isPresented: $checkEmail) {
                Alert(title: Text("Input Error"),
                      message: Text("Please fill in Email field."),
                      dismissButton: .default(Text("OK")))
            }
            .alert(isPresented: $checkPass1) {
                Alert(title: Text("Input Error"),
                      message: Text("Please check your Password's field."),
                      dismissButton: .default(Text("OK")))
            }
            HStack{
                Text("Already have an account?")
                    .font(.custom("Roboto",size: 14))
                NavigationLink(destination: SignUpView()) {
                    Text("Sign Up") // You can customize the label
                        .font(.custom("Roboto",size: 14))
                        .foregroundColor(.blue)
                }
                      }
            Text("or sign in using")
                .font(.custom("Roboto",size: 14))
                .padding(.top,18)
            Image("google")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(10)

            
        }.navigationBarHidden(true)
            .padding(.leading, 24)
            .padding(.trailing, 24)
    }
}
struct ForgotPasswordView: View {
    @State var email_address: String=""
    @State var checkEmail: Bool=false
    @State var checkPassword: Bool=false
    @State public var showOTPView: Bool = false // State variable for navigation
    var body: some View{
        VStack{
            VStack {
                Text("Forgot Password")
                    .fontWeight(.bold)
                    .font(.title).padding(0)
                Text("Enter your email address")
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                Group {
                    // Email Address Field ++++++=
                    Text("Email address")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("*********@mail.com", text: $email_address)
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }.padding(1)
                // Forgot Password Button
                Button(action: {
                    if email_address.isEmpty {
                        checkEmail = true
                    } else {
                        showOTPView = true
                        }
                }, label: {
                    Text("Send OTP")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)                    .padding()
                })
                .background(Color.gray)
                .cornerRadius(25)
                
                .padding()
            }
            
            NavigationLink(destination: OTPView(), isActive: $showOTPView) {
                EmptyView() // Use EmptyView for navigation
            }
            
            .alert(isPresented: $checkEmail) {
                Alert(title: Text("Input Error"),
                      message: Text("Please fill in Email field."),
                      dismissButton: .default(Text("OK")))
            
            }
            Text("Already have an account?")
            NavigationLink(destination: SignInView()) {
                Text("Sign in") // You can customize the label
                    .foregroundColor(.blue)
            }
        }.navigationBarHidden(true)
    }
}

struct OTPView: View {
    @State var email_address: String=""
    @State var checkNumb: Bool=false
    @State private var showOTPView: Bool = false
    //@State variable for navigation
    @State var var1:String=""
        @State var var2:String=""
        @State var var3:String=""
        @State var var4:String=""
        @State var var5:String=""
        @State var var6:String=""
    var body: some View{
        VStack{
            VStack {
                Text("OTP Verification")
                    .fontWeight(.bold)
                    .font(.title).padding(0)
                Text("Enter the 6 digit numbers sent to your email")
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                Group {
                        HStack{
                            TextField("", text: $var1)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.black, lineWidth: 1))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("", text: $var2)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.black, lineWidth: 1))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            TextField("", text: $var3)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.black, lineWidth: 1))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("", text: $var4)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.black, lineWidth: 1))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("", text: $var5)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.black, lineWidth: 1))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("", text: $var6)
                                .padding(5)
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.black, lineWidth: 1))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                        }
                    
                }.padding(1)
                // Forgot Password Button
                Button(action: {
                    if var1.isEmpty || var2.isEmpty || var3.isEmpty || var4.isEmpty || var5.isEmpty || var6.isEmpty {
                        checkNumb = true
                    } else {
                        if var1.isEmpty || var2.isEmpty || var3.isEmpty || var4.isEmpty || var5.isEmpty || var6.isEmpty {
                            checkNumb = true
                        } else {
                            showOTPView = true
                            }
                        }
                }, label: {
                    Text("Send OTP")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)                    .padding()
                })
                .background(Color.gray)
                .cornerRadius(25)
                
                .padding()
            }
            
            NavigationLink(destination: OTPView(), isActive: $showOTPView) {
                EmptyView() // Use EmptyView for navigation
            }
            
            .alert(isPresented: $checkNumb) {
                Alert(title: Text("Input Error"),
                      message: Text("Please fill in field №1-6."),
                      dismissButton: .default(Text("OK")))
            
            }
            Text("Already have an account?")
            NavigationLink(destination: SignInView()) {
                Text("Sign in") // You can customize the label
                    .foregroundColor(.blue)
            }
        }.navigationBarHidden(true)
    }
}

struct HomeView: View {
    @State var email_address: String=""
    @State var checkNumb: Bool=false
    @State private var showOTPView: Bool = false
    //@State variable for navigation
    @State var var1:String=""
    @State var var2:String=""
    @State var var3:String=""
    @State var var4:String=""
    @State var var5:String=""
    @State var var6:String=""
    var body: some View{
        VStack{
            VStack {
                Text("HOME")
                    .fontWeight(.bold)
                    .font(.title).padding(0)
                Text("Enter the 6 digit numbers sent to your email")
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                Group {
                    HStack{
                        
                    }
                    
                }.padding(1)
                // Forgot Password Button
                Button(action: {
                    
                    
                }, label: {
                    Text("Send OTP")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)                    .padding()
                })
                .background(Color.gray)
                .cornerRadius(25)
                
                .padding()
            }
            
            NavigationLink(destination: OTPView(), isActive: $showOTPView) {
                EmptyView() // Use EmptyView for navigation
            }
            
            .alert(isPresented: $checkNumb) {
                Alert(title: Text("Input Error"),
                      message: Text("Please fill in field №1-6."),
                      dismissButton: .default(Text("OK")))
                
            }
            Text("Already have an account?")
            NavigationLink(destination: SignInView()) {
                Text("Sign in") // You can customize the label
                    .foregroundColor(.blue)
            }
        }.navigationBarHidden(true)
    }
}
#Preview {
    ContentView()
}
