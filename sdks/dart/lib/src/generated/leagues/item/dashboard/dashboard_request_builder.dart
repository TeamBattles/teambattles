// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './stats/stats_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\dashboard
class DashboardRequestBuilder extends BaseRequestBuilder<DashboardRequestBuilder> {
    ///  The stats property
    StatsRequestBuilder get stats {
        return StatsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DashboardRequestBuilder clone() {
        return DashboardRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DashboardRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DashboardRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/dashboard", pathParameters) ;
    /// Instantiates a new [DashboardRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DashboardRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/dashboard", {RequestInformation.rawUrlKey : rawUrl}) ;
}
