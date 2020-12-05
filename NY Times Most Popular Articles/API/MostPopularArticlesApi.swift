//
//  MostPopularArticlesApi.swift
//  NY Times Most Popular Articles
//
//  Created by Mohamed Samir on 12/5/20.
//  Copyright © 2020 Mohamed Samir. All rights reserved.
//

import Moya

enum MostPopularArticlesApi {

    case getPopularArticles(period: ArticlesPeriod)
}

enum ArticlesPeriod: Int {
    case day = 1
    case week = 7
    case month = 30
}

extension MostPopularArticlesApi: TargetType {
    
    var baseURL: URL {
        let urlString = Constants.SERVER_URL
        guard let url = URL(string: urlString) else {
            fatalError("base URL could not be configured")
        }
        return url
    }
    
    var path: String {
        switch self {
        case .getPopularArticles(let period):
            return "\(Constants.MOST_POPULAR_API)\(Constants.API_VERSION)/viewed/\(period.rawValue).json"
        }
    }
    
    var method: Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return Task.requestParameters(
            parameters: ["api-key" : Constants.API_KEY],
            encoding: URLEncoding.default
        )
    }
    
    var headers: [String : String]? {
        return nil
    }
    
}

struct Constants {
    static let API_KEY: String = "MIRWLAIoFmD6vKEnES1tNVtGAPEuyRTn"
    static let SERVER_URL: String = "https://api.nytimes.com"
    static let MOST_POPULAR_API: String = "/svc/mostpopular"
    static let API_VERSION: String = "/v2"
    static let HTTP_OK = 200
}
