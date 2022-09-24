/*
 * @Author: LinHao Yu
 * @Date: 2022-09-13 20:58:39
 * @LastEditors: LinHao yu
 * @LastEditTime: 2022-09-23 21:48:17
 * @Description: Dio库的个性化封装
 * 
 */

import 'package:dio/dio.dart';


// 枚举类型 - 请求类型
enum HttpType { HttpTypeGet, HttpTypePost }

class RequestManager {
  // 单例方法
  static Dio? _dioInstance;
  static Dio? _dioInstanceMulti;
  static Dio getRequestManager() {
    _dioInstance ??= Dio();
    // Set default configs
     _dioInstance!.options.baseUrl = 'http://101.42.225.75:8082/elm/';
    _dioInstance!.options.connectTimeout = 5000; //5s
    _dioInstance!.options.receiveTimeout = 3000;

    // _dioInstance!.options.headers = {
    //   "loginId": 1003 //
    // }; // * 测试阶段需要有这个loginId字段，上线之后后端自动加上
    return _dioInstance!;
  }

  static Dio getRequestManagerMulti() {
    _dioInstanceMulti ??= Dio();
    // Set default configs
    // _dioInstanceMulti!.options.baseUrl = 'http://xunjue.com.cn';
    _dioInstanceMulti!.options.connectTimeout = 5000; //5s
    _dioInstanceMulti!.options.receiveTimeout = 3000;
    _dioInstance!.options.contentType = "multipart/form-data";
    _dioInstanceMulti!.options.headers = {
      "loginId": 1003 //
    }; // * 测试阶段需要有这个loginId字段，上线之后后端自动加上
    return _dioInstanceMulti!;
  }

  // 对外抛出方法 - get请求
  static Future<Response> get(String requestUrl,
      {dynamic queryParameters}) async {
    return await _sendHttpRequest(HttpType.HttpTypeGet, requestUrl, false,
        queryParameters: queryParameters);
  }

  // 对外抛出方法 - post请求
  static Future<Response> post(
    String requestUrl,
    bool isMultipart, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) async {
    return await _sendHttpRequest(
      HttpType.HttpTypePost,
      requestUrl,
      isMultipart,
      queryParameters: queryParameters,
      data: data,
    );
  }

  // 私有方法 - 处理get请求、post请求
  static Future _sendHttpRequest(
    HttpType type,
    String requestUrl,
    bool isMultipart, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) async {
    try {
      switch (type) {
        case HttpType.HttpTypeGet:
          return await getRequestManager()
              .get(requestUrl, queryParameters: queryParameters);
        case HttpType.HttpTypePost:
          return isMultipart
              ? await getRequestManager().post(requestUrl,
                  queryParameters: queryParameters, data: data)
              : await getRequestManagerMulti().post(requestUrl,
                  queryParameters: queryParameters, data: data);
        default:
          throw Exception('报错了：请求只支持get和post');
      }
    } on DioError catch (e) {
      print("报错:$e.");
    }
  }

  // 对外抛出方法 - 下载文件
  static void downloadFile(String downLoadUrl, String savePath,
      void Function(bool result) func) async {
    DateTime timeStart = DateTime.now();
    print('开始下载～当前时间：$timeStart');
    try {
      Dio dio = getRequestManager();
      var response = await dio.download(downLoadUrl, savePath,
          onReceiveProgress: (int count, int total) {
        String progressValue = (count / total * 100).toStringAsFixed(1);
        print('当前下载进度:$progressValue%');
      }).whenComplete(() {
        DateTime timeEnd = DateTime.now();
        //用时多少秒
        int secondUse = timeEnd.difference(timeStart).inSeconds;
        print('下载文件耗时$secondUse秒');
        func(true);
      });
    } catch (e) {
      print("downloadFile报错：$e");
    }
  }
}
