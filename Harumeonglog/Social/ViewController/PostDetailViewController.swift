//
//  PostDetailViewController.swift
//  Harumeonglog
//
//  Created by 김민지 on 3/24/25.
//

import UIKit

class PostDetailViewController: UIViewController {
    
    private var isLiked: Bool = false
    private var photos = [UIImage(named:"testImage"), UIImage(named: "testImage"), UIImage(named: "testImage")]

    private lazy var postDetailView: PostDetailView = {
        let view = PostDetailView()
        view.backgroundColor = .background
        
        view.postImageScrollView.delegate = self
        view.commentButton.addTarget(self, action: #selector(commentButtonTapped), for: .touchUpInside)
        
        // 버튼에 더블 탭 제스처 추가
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(likeButtonDoubleTapped))
        doubleTapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTapGesture)
                
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = postDetailView
 
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contentScrollView()
    }

    
    @objc func commentButtonTapped() {
        let commentVC = CommentViewController()
        commentVC.hidesBottomBarWhenPushed = true

        navigationController?.pushViewController(commentVC, animated: true)
    }
    
    // 좋아요 버튼 더블탭
    @objc func likeButtonDoubleTapped() {
        isLiked.toggle()
        
        let imageName = isLiked ? "heart.fill" : "heart"
        let tintColor = isLiked ? UIColor.red00 : UIColor.gray02
        
        postDetailView.likeButton.setImage(UIImage(systemName: imageName), for: .normal)
        postDetailView.likeButton.tintColor = tintColor
    }
    
    func contentScrollView() {
        postDetailView.postImageScrollView.layoutIfNeeded()

        for i in 0..<photos.count {
            let imageView = UIImageView()
            let positionX = postDetailView.postImageScrollView.frame.width * CGFloat(i)
            
            imageView.frame = CGRect(x: positionX, y: 0, width: postDetailView.postImageScrollView.frame.width, height: postDetailView.postImageScrollView.frame.height)
            imageView.image = photos[i]
            imageView.contentMode = .scaleAspectFit
            
            postDetailView.postImageScrollView.addSubview(imageView)
        }
        
        // 전체 컨텐츠 크기를 설정하여 스크롤을 가능하게 만듦
        postDetailView.postImageScrollView.contentSize = CGSize(width: postDetailView.postImageScrollView.frame.width * CGFloat(photos.count), height: postDetailView.postImageScrollView.frame.height)
    }
}


// 게시글 이미지에 대한 scrollView
extension PostDetailViewController: UIScrollViewDelegate {
    
    
    // 스크롤이 진행되는 동안 처리할 코드
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    }
    
}
