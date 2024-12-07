//
//  MusicRowCell.swift
//  SpotifyClone
//
//  Created by Prathmesh Parteki on 13/04/24.
//

import SwiftUI

struct MusicRowCell: View {
    
    var imageSize : CGFloat = 50
    var imageName : String = Constants.randomImage
    var title : String = "Some music name goes here"
    var subtitle : String? = "Some artist name"
    var onCellPressed : (() -> Void)? = nil
    var onEllipsisPressed : (() -> Void)? = nil

    
    var body: some View {
        HStack(spacing: 8){
            ImageLoaderView(urlString: imageName)
                .frame(width: imageSize,height: imageSize)
            
            VStack(alignment: .leading,spacing: 4){
                Text(title)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundStyle(.spotifyWhite)
                
                if let subtitle {
                    Text(subtitle)
                        .font(.callout)
                        .foregroundStyle(.spotifyLightGray)
                }
            }
            .lineLimit(2)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Image(systemName: "ellipsis")
                .font(.subheadline)
                .foregroundStyle(.spotifyWhite)
                .padding(16)
                .background(Color.black.opacity(0.001))
                .onTapGesture {
                    onEllipsisPressed?()
                }
        }
        .onTapGesture {
            onCellPressed?()
        }
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        
        VStack {
            MusicRowCell()
            MusicRowCell()
            MusicRowCell()
            MusicRowCell()
            MusicRowCell()
        }
    }
}
