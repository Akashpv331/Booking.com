



import 'package:dio/dio.dart';
import 'package:project/Api&Url/BookingHistoryRes.dart';
import 'package:project/Api&Url/LoginRes.dart';
import 'package:project/Api&Url/RegisterRes.dart';
import 'package:project/Api&Url/Url.dart';
import 'package:project/Api&Url/hosteldetailsRes.dart';

class ApiClass{
  static ApiClass instance= ApiClass();
  factory(){
    return instance;  
  }
  final  dio= Dio();
  final Url =URL();

  ApiClass(){
  dio.options=BaseOptions(baseUrl: Url.baseUrl,responseType: ResponseType.json);
    // dio.options=BaseOptions(baseUrl: Url.baseUrl,
    // responseType: ResponseType.json);
  }

  Future<RegisterRes?> RegisterUserApi( FormData formData) async{
    try{
      var result= await
      dio.post(Url.registerEndpoint,data: formData);
      print("uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu $result");
      return RegisterRes.fromJson(result.data);
    }
    on DioException catch(e){
      print("yyyyyyyyyyyyyyyyyyyyyyyyyyy $e");
    }
    catch(e){
      print("pppppppppppppppppppppppppppppp $e");
    }
  }
  Future<loginResp?> LoginUserApi(FormData formData) async{
    try{
      final result = await dio.post(Url.loginEndpoint,data: formData);
      print("hhhhhhhhhhhhhhhhhhhhhhhh $result");
      return loginResp.fromJson(result.data);
    }
    on DioError catch(e){
      print(e);
    }
    catch(e){
      print(e);
    }
  }
  Future<List?>HosteldetailApi() async{
    try{
      final result= await dio.get(Url.HostelEndpoints);
      print("gggggggggggggggggggggggggggg $result");
      return result.data as List;

    }
    on DioError catch(e){
      print(e);

    }
    catch(e){
      print(e);
    }
  }
  Future<List?>BookingHisApi() async{
    try{
      final result= await dio.get(Url.BookingHisEndpoints);
      print("ppppppppppppppppppppppppppppppppppppppp $result");
      return result.data as List;

    }
    on DioError catch(e){
      print("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq$e");

    }
    catch(e){
      print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww$e");
    }
  }
  Future<Map?>BookedApi()async{
    try{final result=await dio.get(Url.BookedEndpoints);
    print("sssssssssssssssssssssssssssssssss$result");
    return result.data as Map;


    }
    on DioError catch(e){
      print("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr$e");

    }
    catch(e){
      print("tttttttttttttttttttttttttttttttttttttt$e");
    }
  }
}

class map {
}