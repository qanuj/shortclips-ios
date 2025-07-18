import SwiftUI

struct LoginView: View {
    @State private var phoneNumber = ""
    @State private var otp = ""
    @State private var isOTPSent = false
    @State private var isLoading = false
    @State private var errorMessage = ""
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                // Logo and branding
                VStack(spacing: 20) {
                    Image(systemName: "play.rectangle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.purple)
                    
                    Text("ShortClips")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Your favorite short videos")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                    // Demo instructions
                    VStack(spacing: 8) {
                        Text("Demo Mode")
                            .font(.headline)
                            .foregroundColor(.orange)
                        Text("Use any 10-digit number and OTP: 123456")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(8)
                }
                .padding(.top, 50)
                
                Spacer()
                
                // Phone number input
                VStack(spacing: 20) {
                    if !isOTPSent {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Mobile Number")
                                .font(.headline)
                            
                            HStack {
                                Text("+91")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 15)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(8)
                                
                                TextField("Enter mobile number", text: $phoneNumber)
                                    .keyboardType(.phonePad)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 15)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(8)
                            }
                        }
                        
                        Button(action: sendOTP) {
                            if isLoading {
                                ProgressView()
                                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                            } else {
                                Text("Send OTP")
                                    .fontWeight(.semibold)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(phoneNumber.count >= 10 ? Color.purple : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .disabled(phoneNumber.count < 10 || isLoading)
                        
                    } else {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Enter OTP")
                                .font(.headline)
                            
                            Text("Sent to +91 \(phoneNumber)")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            TextField("Enter 6-digit OTP", text: $otp)
                                .keyboardType(.numberPad)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 15)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(8)
                        }
                        
                        Button(action: verifyOTP) {
                            if isLoading {
                                ProgressView()
                                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                            } else {
                                Text("Verify OTP")
                                    .fontWeight(.semibold)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(otp.count == 6 ? Color.purple : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .disabled(otp.count < 6 || isLoading)
                        
                        Button("Resend OTP") {
                            sendOTP()
                        }
                        .foregroundColor(.purple)
                    }
                }
                .padding(.horizontal, 20)
                
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .font(.caption)
                        .padding(.horizontal, 20)
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
    
    private func sendOTP() {
        isLoading = true
        errorMessage = ""
        
        // Simulate API call
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            isLoading = false
            if phoneNumber.count >= 10 {
                isOTPSent = true
            } else {
                errorMessage = "Please enter a valid phone number"
            }
        }
    }
    
    private func verifyOTP() {
        isLoading = true
        errorMessage = ""
        
        // Simulate API call
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            isLoading = false
            if otp == "123456" {
                authManager.loginWithSampleData(phoneNumber: phoneNumber)
            } else {
                errorMessage = "Invalid OTP. Use 123456 for demo"
            }
        }
    }
}